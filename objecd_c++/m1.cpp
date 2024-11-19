#include <iostream>
#include <winsock2.h>  // S? d?ng <sys/socket.h> trên Linux
#pragma comment(lib, "ws2_32.lib")  // Link thu vi?n Winsock trên Windows

#define PORT 8080
#define BUFFER_SIZE 1024

int main() {
    WSADATA wsa;
    SOCKET serverSocket, clientSocket;
    sockaddr_in serverAddr, clientAddr;
    int clientAddrLen = sizeof(clientAddr);
    char buffer[BUFFER_SIZE];

    // Kh?i t?o Winsock
    if (WSAStartup(MAKEWORD(2, 2), &wsa) != 0) {
        std::cerr << "Kh?i t?o Winsock th?t b?i\n";
        return 1;
    }

    // T?o socket cho server
    serverSocket = socket(AF_INET, SOCK_STREAM, 0);
    if (serverSocket == INVALID_SOCKET) {
        std::cerr << "Không th? t?o socket\n";
        WSACleanup();
        return 1;
    }

    // Ð?nh c?u hình d?a ch? server
    serverAddr.sin_family = AF_INET;
    serverAddr.sin_addr.s_addr = INADDR_ANY;
    serverAddr.sin_port = htons(PORT);

    // Liên k?t socket v?i d?a ch? và c?ng
    if (bind(serverSocket, (sockaddr*)&serverAddr, sizeof(serverAddr)) == SOCKET_ERROR) {
        std::cerr << "Liên k?t th?t b?i\n";
        closesocket(serverSocket);
        WSACleanup();
        return 1;
    }

    // L?ng nghe k?t n?i t? client
    listen(serverSocket, 3);
    std::cout << "Ðang ch? k?t n?i...\n";

    // Ch?p nh?n k?t n?i t? client
    clientSocket = accept(serverSocket, (sockaddr*)&clientAddr, &clientAddrLen);
    if (clientSocket == INVALID_SOCKET) {
        std::cerr << "K?t n?i th?t b?i\n";
        closesocket(serverSocket);
        WSACleanup();
        return 1;
    }
    std::cout << "Client dã k?t n?i.\n";

    // Nh?n và g?i tin nh?n
    while (true) {
        ZeroMemory(buffer, BUFFER_SIZE);
        int bytesReceived = recv(clientSocket, buffer, BUFFER_SIZE, 0);
        if (bytesReceived <= 0) {
            std::cerr << "Client dã ng?t k?t n?i.\n";
            break;
        }

        std::cout << "Client: " << buffer << std::endl;
        std::cout << "B?n: ";
        std::cin.getline(buffer, BUFFER_SIZE);
        send(clientSocket, buffer, strlen(buffer), 0);
    }

    // Ðóng k?t n?i
    closesocket(clientSocket);
    closesocket(serverSocket);
    WSACleanup();
    return 0;
}

