//Xây d?ng l?p ma tr?n có tên là Matrix cho các ma tr?n, các hàm thành ph?n bao
//g?m: hàm t?o m?c d?nh, hàm nh?p xu?t ma tr?n, c?ng, tr?, nhân hai ma tr?n.

#include<bits/stdc++.h>
using namespace std;

class matrix{
	private:
		int rows,cols;
		vector<vector<double>> maTran;
	public:
		matrix(int,int);
		matrix(const matrix& mt);
		void nhap();
		void xuat();
		matrix operator + (matrix mt);
		matrix operator - (matrix mt);
		matrix operator * (matrix);
		double deg();
};
matrix::matrix(int r = 0, int c = 0){
	rows = r;cols = c;
	maTran.resize(r,vector<double>(c,0.0));
}
matrix::matrix(const matrix& mt){
	rows = mt.rows;cols = mt.cols;
	maTran = mt.maTran;
}
void matrix::nhap(){
	if(rows == 0 || cols == 0){
		cout <<"nhap so hang va so cot cua ma tran:";
		cin >>rows>>cols;
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
	matrix kq(this->rows,this->cols);
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
	matrix kq(this->rows,this->cols);
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
	matrix kq(this->rows,mt.cols);
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
int matrix::deg(){
	
}

int main(){
	matrix v1(3,3),v2(3,3),v3;
	v1.nhap();
	v2.nhap();
	v3 = v1 * v2;
	v3.xuat();
}
