#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>

void error(char* msg){
    perror(msg);
    exit(1);
}

int main(int argc, char* argv[]){
    int sockfd;
    int newsockfd;
    int portno;
    int clilen;
    char buffer[256];
    struct sockaddr_in;
    struct serv_addr;
    struct cli_addr;
    int n;
    if(argc<2){
        fprintf(stderr, "Error: no port provided");
        exit(1);
    }
}


