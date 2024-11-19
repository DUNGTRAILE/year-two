#include <iostream>

using namespace std;

class Vector {
private:
    int size;
    double* data;

public:
    // H�m t?o m?c d?nh
    Vector() : size(0), data(nullptr) {}

    // H�m t?o c� tham s?
    Vector(int n) : size(n) {
        data = new double[size];
        for (int i = 0; i < size; ++i) {
            data[i] = 0.0;
        }
    }

    // H�m h?y
    ~Vector() {
        delete[] data;
    }

    // H�m t�nh t�ch v� hu?ng
    double dotProduct(const Vector& other) const {
        if (size != other.size) {
            cout << "K�ch thu?c c?a hai vector kh�ng b?ng nhau!" << endl;
            return 0;
        }

        double result = 0.0;
        for (int i = 0; i < size; ++i) {
            result += data[i] * other.data[i];
        }
        return result;
    }

    // T?i to�n t? [] d? truy c?p ph?n t?
    double& operator[](int index) {
        if (index < 0 || index >= size) {
            cout << "Index out of range!" << endl;
            // B?n c� th? x? l� l?i theo c�ch kh�c, v� d?: throw exception
        }
        return data[index];
    }

    // T?i to�n t? + d? c?ng hai vector
    Vector operator+(const Vector& other) const {
        if (size != other.size) {
            cout << "K�ch thu?c c?a hai vector kh�ng b?ng nhau!" << endl;
            // Tr? v? m?t vector r?ng ho?c x? l� l?i theo c�ch kh�c
            return Vector();
        }

        Vector result(size);
        for (int i = 0; i < size; ++i) {
            result.data[i] = data[i] + other.data[i];
        }
        return result;
    }

    // T?i to�n t? << d? xu?t vector
    friend ostream& operator<<(ostream& os, const Vector& vec) {
        os << "(";
        for (int i = 0; i < vec.size; ++i) {
            os << vec.data[i];
            if (i < vec.size - 1) {
                os << ", ";
            }
        }
        os << ")";
        return os;
    }

    // T?i to�n t? >> d? nh?p vector
    friend istream& operator>>(istream& is, Vector& vec) {
        for (int i = 0; i < vec.size; ++i) {
            is >> vec.data[i];
        }
        return is;
    }
};

int main() {
    Vector v1(3);
    v1[0] = 1.0;
    v1[1] = 4.0;
    v1[2] = 3.0;

    Vector v2(3);
    cin >> v2;

    Vector v3 = v1 + v2;
    cout << "v1: " << v1 << endl;
    cout << "v2: " << v2 << endl;
    cout << "v1 + v2: " << v3 << endl;
    cout << "T�ch v� hu?ng c?a v1 v� v2: " << v1.dotProduct(v2) << endl;

    return 0;
}



