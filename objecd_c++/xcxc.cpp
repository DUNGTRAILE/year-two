#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

double determinant(vector<vector<double>> matrix, int n) {
    double det = 1;
    for (int i = 0; i < n; ++i) {
        // T�m ph?n t? l?n nh?t trong c?t i d? l�m ph?n t? ch?t
        int maxRow = i;
        for (int k = i + 1; k < n; ++k) {
            if (fabs(matrix[k][i]) > fabs(matrix[maxRow][i])) {
                maxRow = k;
            }
        }

        // �?i ch? h�ng d? dua ph?n t? l?n nh?t l�n tr�n c�ng
        if (i != maxRow) {
            swap(matrix[i], matrix[maxRow]);
            det = -det; // �?i d?u d?nh th?c khi d?i ch? h�ng
        }

        // N?u ph?n t? tr�n du?ng ch�o ch�nh l� 0, d?nh th?c b?ng 0
        if (matrix[i][i] == 0) {
            return 0;
        }

        // Bi?n d?i Gauss d? dua v? d?ng tam gi�c
        det *= matrix[i][i];
        for (int k = i + 1; k < n; ++k) {
            double factor = matrix[k][i] / matrix[i][i];
            for (int j = i; j < n; ++j) {
                matrix[k][j] -= factor * matrix[i][j];
            }
        }
    }
    return det;
}

int main() {
    int n;
    cout << "Nh?p c?p c?a ma tr?n: ";
    cin >> n;

    vector<vector<double>> matrix(n, vector<double>(n));
    cout << "Nh?p c�c ph?n t? c?a ma tr?n:" << endl;
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            cin >> matrix[i][j];
        }
    }

    double det = determinant(matrix, n);
    cout << "�?nh th?c c?a ma tr?n l�: " << det << endl;

    return 0;
}

