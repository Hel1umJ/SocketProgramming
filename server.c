#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>

struct sockaddr_in{
    short int sin_family;
    unsigned short int sin_port;
    struct in_addr sin_addr;
    unsigned char sin_zero[8];
}

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

    sockfd = socket(AF_INET,SOCK_STREAM, 0);
    if(sockfd < 0){
        error("ERROR opening socket");
    }
    bzero((char*) &serv_addr, sizeof(serv_addr));
    portno = atoi(argv[1]);
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(portno);
    


}


