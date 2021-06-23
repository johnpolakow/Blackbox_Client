# Blackbox_Client
Client code for connecting to Pi server. At the moment requires specifying the IP address of the server to connect to. Future version will search local network for Pis, and connect automatically. Need to integrate existing code for that functionality.

To change IP address of server, open client.c and edit the address of the line:
#define DEFAULT_SERVER_IP             "192.168.123.4"

leave parameter DEFAULT_SERVER_PORT the same, do not change

## Compiling
gcc -o client client.c
