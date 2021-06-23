
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
#include <stdbool.h>
#include <sys/ioctl.h>
#include <stdint.h>

#include "clientserver.h"
#include "Parse.h"
#include "Save.h"

#define MESSAGE_LEN 100
char SERVER_IP[20];		// "10.198.23.58"
#define DEFAULT_SERVER_PORT		"2020"

char complete_receive_string[200];

int Receive_Data(conn_t* connection, char* buffer);
bool Check_FD_Ready(conn_t* connection, fd_set* FD, struct timeval* tv);
char* Get_IP_Address();
void Get_String(char* usr_string);
void Read_Socket_nBytes(conn_t* client_conn, char* buff, int num_bytes);

conn_t* Initialize_PI_Connection(char* ip_addr )
{
    // get ip address from command line, or file... write last used ip address to file, then read
    // connect and verify the connection is good
    //
    strcpy(SERVER_IP, ip_addr);
}

char* Get_IP_Address()
{
    size_t characters;
  	size_t bufsize = 128;
	char* keyboard_input_buffer;
	keyboard_input_buffer = (char*)malloc(sizeof( char* ) * 100 );
	char send_buffer[MESSAGE_LEN];
    bool valid_ip = false;

    printf("----------------------------------\n");
    printf("Enter PI IP Address:\n");
    char* last_ip = Read_Last_IP_Addr();
    if(last_ip != NULL)
    {
        printf("last IP: %s\n", last_ip);
        free(last_ip);
    }

    while(!valid_ip)
    {
        printf(">>: ");
        characters = getline(&keyboard_input_buffer,&bufsize,stdin);
        keyboard_input_buffer[characters-1] = '\0';	// null terminate the string

        //printf("keyboard buffer:  %s\n", keyboard_input_buffer);

        int ip_1, ip_2, ip_3, ip_4;
        bool input_ok = true;
        char* token = Parse_First_Token(keyboard_input_buffer, '.');
        ip_1 = Parse_Int(token);
        free(token);

        if(ip_1 == 0 || ip_1>=255)
        {
            input_ok = false;
            //printf("\tERROR: each subnet ip must be between [1-254].\n");
            printf( COLOR_BOLD_RED "\t%d" COLOR_RESET ".", ip_1);
        }
        else
            printf( COLOR_BOLD_GREEN "\t%d" COLOR_RESET ".", ip_1);

        token = Parse_nTH_Token(keyboard_input_buffer, 2, '.');
        ip_2 = Parse_Int(token);
        free(token);
        if(ip_2 == 0 || ip_2>=255)
        {
            input_ok = false;
            printf( COLOR_BOLD_RED "%d" COLOR_RESET ".", ip_2);
        }
        else
            printf( COLOR_BOLD_GREEN "%d" COLOR_RESET ".", ip_2);

        token = Parse_nTH_Token(keyboard_input_buffer, 3, '.');
        ip_3 = Parse_Int(token);
        free(token);
        if(ip_3 == 0 || ip_3>=255)
        {
            input_ok = false;
            printf( COLOR_BOLD_RED "%d" COLOR_RESET ".", ip_3);
        }
        else
            printf( COLOR_BOLD_GREEN "%d" COLOR_RESET ".", ip_3);

        token = Parse_nTH_Token(keyboard_input_buffer, 4, '.');
        ip_4 = Parse_Int(token);
        free(token);
        if(ip_4 == 0 || ip_4>=255)
        {
            input_ok = false;
            printf( COLOR_BOLD_RED "%d " COLOR_RESET, ip_4);
        }
        else
            printf( COLOR_BOLD_GREEN "%d" COLOR_RESET "\n", ip_4);
            printf("\n");
        if(input_ok == false)
            printf("\tERROR: each subnet ip must be between [1-254]\n");
        else
        {
            valid_ip = true;
            char full_ip[20];
            Erase_Num_Chars(full_ip, 20);
            sprintf(full_ip, "%d.%d.%d.%d", ip_1, ip_2, ip_3, ip_4);
            Write_IP_to_File(full_ip);
            printf("\n");
            return strdup(full_ip);
        }
    }
}

int Receive_Data(conn_t* connection, char* buffer)
{
		Erase_String_Contents((char*)buffer);
		int receive_Bytes = recvData(connection , (char*)buffer, (int)sizeof(buffer));
		buffer[receive_Bytes] = '\0';
		//printf("   recv: %s\n", buffer);
		return receive_Bytes;
}



void Read_Socket_nBytes(conn_t* client_conn, char* buff, int num_bytes)
{
	Erase_String_Contents(complete_receive_string);
	while(num_bytes>0)
	{
		int read_chars = Receive_Data(client_conn, buff);
		num_bytes -= read_chars;
		strncat(complete_receive_string, buff, read_chars);
		Erase_String_Contents(buff);
	}
}

// used to get command string to issue to server process on Pi
void Get_String(char* usr_string)
{
        size_t characters;
      	size_t bufsize = 128;
    	char* keyboard_input_buffer;
		keyboard_input_buffer = (char*)malloc(sizeof( char* ) * 100 );
		char send_buffer[MESSAGE_LEN];

        printf("----------------------------------\n");
		printf( COLOR_BRIGHT_MAGENTA "\t***CLIENT*** ( HUB )\n\n" COLOR_RESET);
        printf("##: ");
        characters = getline(&keyboard_input_buffer,&bufsize,stdin);
        keyboard_input_buffer[characters-1] = '\0';	// null terminate the string
        sprintf(send_buffer, "%s", keyboard_input_buffer);  // copy text read from keyboard to send buffer
        send_buffer[strlen(send_buffer)] = '\0';

		strcpy(usr_string, send_buffer);
}

bool Check_FD_Ready(conn_t* connection, fd_set* FD, struct timeval* tv)
{
		bool status = true;

		// argument order: (num_file descriptors+1, readFD, writeFD, fixed buffer, timeout value)
		if ( select(connection->sockfd + 1, FD, NULL, NULL, tv) == -1 )	// determine if file descriptors of either socket are ready
		{
				status = false;
				perror("select failed\n");
				disconnect_tcp(connection);
		}

		return status;
}
