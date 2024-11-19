#include <iostream>
#include <string>

std::string xorEncryptDecrypt(const std::string &text, char key) {
    std::string result = text;
    for (size_t i = 0; i < text.size(); ++i) {
        result[i] = text[i] ^ key;  // XOR t?ng k� t? v?i kh�a
    }
    return result;
}

int main() {
    std::string text;
    char key;

    std::cout << "Nh?p chu?i c?n m� h�a: ";
    std::getline(std::cin, text);
    std::cout << "Nh?p k� t? kh�a: ";
    std::cin >> key;

    // M� h�a
    std::string encrypted = xorEncryptDecrypt(text, key);
    std::cout << "Chu?i sau khi m� h�a: " << encrypted << std::endl;

    // Gi?i m�
    std::string decrypted = xorEncryptDecrypt(encrypted, key);
    std::cout << "Chu?i sau khi gi?i m�: " << decrypted << std::endl;

    return 0;
}

