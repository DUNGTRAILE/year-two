#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

double determinant(vector<vector<double>> matrix, int n) {
    double det = 1;
    for (int i = 0; i < n; ++i) {
        // Tìm ph?n t? l?n nh?t trong c?t i d? làm ph?n t? ch?t
        int maxRow = i;
        for (int k = i + 1; k < n; ++k) {
            if (fabs(matrix[k][i]) > fabs(matrix[maxRow][i])) {
                maxRow = k;
            }
        }

        // Ð?i ch? hàng d? dua ph?n t? l?n nh?t lên trên cùng
        if (i != maxRow) {
            swap(matrix[i], matrix[maxRow]);
            det = -det; // Ð?i d?u d?nh th?c khi d?i ch? hàng
        }

        // N?u ph?n t? trên du?ng chéo chính là 0, d?nh th?c b?ng 0
        if (matrix[i][i] == 0) {
            return 0;
        }

        // Bi?n d?i Gauss d? dua v? d?ng tam giác
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
    cout << "Nh?p các ph?n t? c?a ma tr?n:" << endl;
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            cin >> matrix[i][j];
        }
    }

    double det = determinant(matrix, n);
    cout << "Ð?nh th?c c?a ma tr?n là: " << det << endl;

    return 0;
}

