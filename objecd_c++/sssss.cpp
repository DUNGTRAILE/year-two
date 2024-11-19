//Xây d?ng l?p ma tr?n có tên là Matrix cho các ma tr?n, các hàm thành ph?n bao
//g?m: hàm t?o m?c d?nh, hàm nh?p xu?t ma tr?n, c?ng, tr?, nhân hai ma tr?n.

#include<bits/stdc++.h>
using namespace std;

class matrix{
	private:
		int rows,cols;
		vector<vector<double>> maTran;
	public:
		matrix(int);
		matrix(const matrix& mt);
		void nhap();
		void xuat();
		matrix operator + (matrix mt);
		matrix operator - (matrix mt);
		matrix operator * (matrix);
		double det();
};
matrix::matrix(int r = 0){
	rows = r;cols = r;
	maTran.resize(r,vector<double>(r,0.0));
}
matrix::matrix(const matrix& mt){
	rows = mt.rows;cols = mt.cols;
	maTran = mt.maTran;
}
void matrix::nhap(){
	if(rows == 0 || cols == 0){
		cout <<"nhap so hang va so cot cua ma tran:";
		cin >>rows;
		cols = rows;
		maTran.resize(rows,vector<double>(cols));
	}
	cout<<"nhap ma tran:\n";
	for(int i = 0 ; i < rows ; i++){
		for(int j = 0 ; j < cols ; j++){
			cout <<"nhap phan tu "<<i+1<<"x"<<j+1<<": ";
			cin >> maTran[i][j];
		}
	}
}
void matrix::xuat(){
	cout <<"Ma tran cua ban la:\n";
	for(int i = 0 ; i < rows ; i++){
		for(int j = 0 ; j < cols ; j++){
			cout<< maTran[i][j]<<" ";
		}
		cout <<endl;
	}
}
matrix matrix::operator + (matrix mt){
	if(this->cols != mt.cols || this->rows != mt.rows){
		cout <<"khong the cong ma tran";
		return 0;
	}
	matrix kq(this->rows);
	for(int i = 0 ; i < rows ; i++){
		for(int j = 0 ; j < cols ; j++){
			kq.maTran[i][j] = this->maTran[i][j] + mt.maTran[i][j];
		}
	}
	return kq;
}
matrix matrix::operator - (matrix mt){
	if(this->cols != mt.cols || this->rows != mt.rows){
		cout <<"khong the tru ma tran";
		return 0;
	}
	matrix kq(this->rows);
	for(int i = 0 ; i < rows ; i++){
		for(int j = 0 ; j < cols ; j++){
			kq.maTran[i][j] = this->maTran[i][j] - mt.maTran[i][j];
		}
	}
	return kq;
}
matrix matrix::operator * (matrix mt){
	if(this->cols != mt.rows){
		cout <<"khong the nhan ma tran";
		return 0;
	}
	matrix kq(this->rows);
	for(int i = 0 ; i < kq.rows ; i++){
		for(int j = 0 ; j < kq.cols ; j++){
			double tmp = 0.0;
			for(int t = 0; t < kq.rows ; t++){
				tmp += this->maTran[i][t]*mt.maTran[t][j];
			}
			kq.maTran[i][j] = tmp;
		}
	}
	return kq;
}
double matrix::det(){
	double kq = 1;
	for(int i = 0 ; i < rows ; i++){
		int max = i;
		for(int k = i+1; k < rows ; k++){
			if(abs(this->maTran[k][i]) > abs(this->maTran[max][i])){
				max = k;
			}
		}
		
		//so sanh de trao doi
		if(i != max){
			kq = -kq;
			swap(this->maTran[i],this->maTran[max]);
		}
		if(this->maTran[i][i] == 0){
			return 0;
		}
		kq *= this->maTran[i][i];
		for(int k = i + 1 ; k <cols ; k++){
			double tmp = this->maTran[k][i]/ this->maTran[i][i];
			for(int j = i ; j < cols; j++){
				this->maTran[k][j] -= tmp * this->maTran[i][j];
			}
		}
	}
	return kq;
}
//double matrix::det() {
//    double det = 1;
//    for (int i = 0; i < rows; i++) {
//        // Find the row with the largest absolute value in the current column
//        int max_row = i;
//        for (int k = i + 1; k < rows; k++) {
//            if (std::abs(this->maTran[k][i]) > std::abs(this->maTran[max_row][i])) {
//                max_row = k;
//            }
//        }
//
//        // Swap rows if necessary to bring the largest element to the pivot position
//        if (max_row != i) {
//            det *= -1; // Negate the determinant when swapping rows
//            std::swap(this->maTran[i], this->maTran[max_row]);
//        }
//
//        // If the pivot element is zero, the determinant is zero
//        if (this->maTran[i][i] == 0) {
//            return 0;
//        }
//
//        det *= this->maTran[i][i];
//
//        // Eliminate elements below the pivot
//        for (int k = i + 1; k < rows; k++) {
//            double factor = this->maTran[k][i] / this->maTran[i][i];
//            for (int j = i + 1; j < cols; j++) {
//                this->maTran[k][j] -= factor * this->maTran[i][j];
//            }
//            this->maTran[k][i] = 0; // Set the eliminated element to zero
//        }
//    }
//
//    return det;
//}
int main(){
	cout<<"thao tac tren ma tran vuong:\n";
	matrix v1;
	v1.nhap();
	double x = v1.det();
	v1.xuat();
	cout << x;
}



























