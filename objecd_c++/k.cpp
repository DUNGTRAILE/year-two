#include <iostream>
#include <string>

std::string xorEncryptDecrypt(const std::string &text, char key) {
    std::string result = text;
    for (size_t i = 0; i < text.size(); ++i) {
        result[i] = text[i] ^ key;  // XOR t?ng ký t? v?i khóa
    }
    return result;
}

int main() {
    std::string text;
    char key;

    std::cout << "Nh?p chu?i c?n mã hóa: ";
    std::getline(std::cin, text);
    std::cout << "Nh?p ký t? khóa: ";
    std::cin >> key;

    // Mã hóa
    std::string encrypted = xorEncryptDecrypt(text, key);
    std::cout << "Chu?i sau khi mã hóa: " << encrypted << std::endl;

    // Gi?i mã
    std::string decrypted = xorEncryptDecrypt(encrypted, key);
    std::cout << "Chu?i sau khi gi?i mã: " << decrypted << std::endl;

    return 0;
}

