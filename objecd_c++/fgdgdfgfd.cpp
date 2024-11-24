#include <iostream>
using namespace std;

class Matrix {
private:
    int row;  
    int col;
    float** data;  

public:
    
    Matrix(int r = 0, int c = 0){
    	row=r;col=c ;
        data = new float*[row];
        for (int i = 0; i < row; i++) {
            data[i] = new float[col];
            for (int j = 0; j < col; j++) {
                data[i][j] = 0;
            }
        }
    }


    Matrix(const Matrix& m) {
        row = m.row;
        col = m.col;
        data = new float*[row];
        for (int i = 0; i < row; i++) {
            data[i] = new float[col];
            for (int j = 0; j < col; j++) {
                data[i][j] = m.data[i][j];
            }
        }
    }

   
    ~Matrix() {
        for (int i = 0; i < row; i++) {
            delete[] data[i];
        }
        delete[] data;
    }

    
    void nhap() {
        cout << "Nhap cac phan tu cua ma tran (" << row << "x" << col << "):\n";
        for (int i = 0; i < row; i++) {
            for (int j = 0; j < col; j++) {
                cout << "Phan tu [" << i + 1 << "][" << j + 1 << "]: ";
                cin >> data[i][j];
            }
        }
    }


    void xuat() const {
        for (int i = 0; i < row; i++) {
            for (int j = 0; j < col; j++) {
                cout << data[i][j] << " ";
            }
            cout << endl;
        }
    }

    
    Matrix operator+(const Matrix& m){
        if (row != m.row || col != m.col) {
            cout << "Hai ma tran khong cung cap!" << endl;
            return Matrix();
        }
        Matrix kq(row, col);
        for (int i = 0; i < row; i++) {
            for (int j = 0; j < col; j++) {
                kq.data[i][j] = data[i][j] + m.data[i][j];
            }
        }
        return kq;
    }

    
    Matrix operator-(const Matrix& m){
        if (row != m.row || col != m.col) {
            cout << "Hai ma tran khong cung cap!" << endl;
            return Matrix();
        }
        Matrix kq(row, col);
        for (int i = 0; i < row; i++) {
            for (int j = 0; j < col; j++) {
                kq.data[i][j] = data[i][j] - m.data[i][j];
            }
        }
        return kq;
    }

  
    Matrix operator*(const Matrix& m){
        if (col != m.row) {
            cout << "Hai ma tran khong nhan duoc!" << endl;
            return Matrix();
        }
        Matrix kq(row, m.col);
        for (int i = 0; i < row; i++) {
            for (int j = 0; j < m.col; j++) {
                kq.data[i][j] = 0;
                for (int k = 0; k < col; k++) {
                    kq.data[i][j] += data[i][k] * m.data[k][j];
                }
            }
        }
        return kq;
    }
};



int main() {
    int r, c;
    cout << "Nhap so hang va so cot cua ma tran a: ";
    cin >> r >> c;
    Matrix a(r, c);
    a.nhap();

    cout << "Nhap so hang va so cot cua ma tran b: ";
    cin >> r >> c;
    Matrix b(r, c);
    b.nhap();

    cout << "\nMa tran a:\n";
    a.xuat();
    cout << "\nMa tran b:\n";
    b.xuat();

  	Matrix x = a+b;
  	cout << "\nMa tran a + b:\n";
  	x.xuat();

	Matrix x1 = a-b;
  	cout << "\nMa tran a - b:\n";
  	x1.xuat();
    
    Matrix x2 = a*b;
  	cout << "\nMa tran a * b:\n";
  	x2.xuat();

    return 0;
}

