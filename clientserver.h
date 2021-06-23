#ifndef __CLIENTSERVER_H
#define __CLIENTSERVER_H

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <sys/wait.h>
#include <signal.h>
#include <assert.h>
#include <sys/time.h>
#include "colors.h"


// a convenience struct that contains the socket and remote address for a connection
typedef struct {
	int sockfd;
	struct sockaddr_in theiraddr;
} conn_t;


int connect_tcp(const char* server_IP, const char* serverPort);
void disconnect_tcp(int sockFD);
int listen_tcp(const char* listenPort);
int accept_tcp(int sockFD);
int recv_tcp(int sockFD, char* buffer, unsigned int bufSize);
int send_tcp(int sockFD, char* buffer, unsigned int bytesToSend);
int recvData(int sockFD, char* buffer, unsigned int bufSize);
int sendData(int sockFD, char* buffer, unsigned int bytesToSend);





#define BACKLOG	5


// Connect to IP:port, allocate any necessary resources
int connect_tcp(const char* server_IP, const char* server_Port) {
	struct addrinfo hints;
	struct addrinfo *result = NULL;
	memset(&hints, 0, sizeof(hints));
	hints.ai_family = AF_INET;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_flags = AI_PASSIVE;



	int status = getaddrinfo(server_IP, server_Port, &hints, &result);
	if (status != 0)
	{
		fprintf(stderr, "getaddrinfo error: %s\n", gai_strerror(status));
		return 0;
	}

	int sock_FD = socket(result->ai_family, result->ai_socktype, result->ai_protocol);

	status = connect(sock_FD, result->ai_addr, result->ai_addrlen);

	return sock_FD;
}

// Disconnect socket, free any allocated resources
void disconnect_tcp(int sockFD)
{
	close(sockFD);
}

// Listen on given port
int listen_tcp(const char* listenPort) {
	int yes=1;
	struct addrinfo hints;
	struct addrinfo *result = NULL, *p;
	int sockFD;

	memset(&hints, 0, sizeof(hints));
	hints.ai_family = AF_INET;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_flags = AI_PASSIVE;

	int status = getaddrinfo(NULL, listenPort, &hints, &result);
	if (status != 0) {
		fprintf(stderr, "getaddrinfo error: %s\n", gai_strerror(status));
		return 0;
	}

	// loop through all the results and bind to the first we can
	for(p = result; p != NULL; p = p->ai_next) {
		if ((sockFD = socket(p->ai_family, p->ai_socktype,
							 p->ai_protocol)) == -1) {
			perror("could not create socket with this address, retrying...\n");
			continue;
		}

		if (setsockopt(sockFD, SOL_SOCKET, SO_REUSEADDR, &yes,
						sizeof(int)) == -1) {
			perror("setsockopt on this socket failed, retrying...\n");
			continue;//return -1;
		}

		if (bind(sockFD, p->ai_addr, p->ai_addrlen) == -1) {
			close(sockFD);
			perror("bind on this address failed, retrying...\n");
			continue;
		}

		break;
	}

	if (p == NULL) {
		fprintf(stderr, "failed to bind\n");
		return 0;
	}

	freeaddrinfo(result); // all done with this structure

	if (listen(sockFD, BACKLOG) == -1) {
		perror("could not listen\n");
		return 0;
	}

	return sockFD;
}

// wait for (blocking) and accept any incoming connections on the listening socket
int accept_tcp(int sockFD) {
	char s[INET6_ADDRSTRLEN];
	socklen_t sin_size;
	struct sockaddr_in their_addr;
	sin_size = sizeof(their_addr);

	sockFD= accept(sockFD, (struct sockaddr*)&their_addr, &sin_size);
	if (sockFD == -1) {
		perror("accept failed\n");
		return 0;
	}

	inet_ntop(AF_INET, &(their_addr.sin_addr), s, sizeof(s));

	printf("Accepted connection from:  " COLOR_BOLD_GREEN "%s\n\n" COLOR_RESET, s);
	return sockFD;
}

// receive data on the socket
int recv_tcp(int sockFD, char* buffer, unsigned int bufSize) {
	int retVal = recv(sockFD, buffer, bufSize, 0);
	if(retVal <= 0) {
		if(retVal == 0)
			printf("other party disconnected\n");
		else
			printf("Error in socket recv %s\n",gai_strerror(retVal));
	}

	return retVal;
}

// send data on the socket
int send_tcp(int sockFD, char* buffer, unsigned int bytesToSend) {
	int ret;
	int retVal = 0;

	if( bytesToSend == 0 )
			return 0;
	// all data in the buffer may not be sent on a single call to send(),
	// so loop until all data is sent
	while (retVal < (int)bytesToSend) {
		ret = send(sockFD, (char*)(buffer+retVal), bytesToSend-retVal, 0);
		if( ret <= 0 ) {
			printf("error in send\n");
			retVal = ret;
			break;
		}
		retVal += ret;
	}

	return retVal;
}

// Convenience function: Receive data into a provided buffer on the given connection
int recvData(int sockFD, char* buffer, unsigned int bufSize) {
	int retVal = recv_tcp(sockFD, (char*)buffer, bufSize);
	if (retVal <= 0) {
		disconnect_tcp(sockFD);
	}
	return retVal;
}

// Convenience function: Send data in a provided buffer on the given connection
int sendData(int sockFD, char* buffer, unsigned int bytesToSend) {
	int retVal = send_tcp(sockFD, (char*)buffer, bytesToSend);
	if (retVal <= 0) {
		disconnect_tcp(sockFD);
	}
	return retVal;
}










#endif
