#include<bits/stdc++.h>
using namespace std;

class date{
	private:
		int ngay , thang , nam;
	public:
		void nhap(){
			cout <<"nhap ngay thang nam sinh:";
			cin >>ngay >> thang >> nam;
		}
		void in(){
			cout <<"Ngay sinh la: "<<ngay<<"/"<<thang<<"/"<<nam<<endl;
		}	
};

class Nguoi{
	protected:
		string hoDem , ten;
		date ngayThang;
	public:
		void nhap();
		void in();
		bool operator > (Nguoi);	
};
void Nguoi::nhap(){
	cout <<"-nhap thong tin nguoi:\n";
	cout <<"+Nhap ho dem: ";getline(cin,hoDem);
	cout <<"+nhap ten: ";cin>>ten;
	ngayThang.nhap();
	cin.ignore();
}
void Nguoi::in(){
	cout <<"thong tin nguoi la:\n";
	cout << "ho va ten: "<<hoDem<<" "<<ten<<endl;
	ngayThang.in();
}
bool Nguoi::operator >(Nguoi n1){
	if(this->ten > n1.ten) return true;
	if( this -> ten == n1.ten && this->hoDem > n1.hoDem) return true;
	return false; 
}
class Sinhvien:public Nguoi{
	private:
		string maSV;
		double diemTB;
	public:
		void nhap();
		void in();
		string getmaSV();
		string gethoDem();
		string getten();
		double getdiemTB();
		date getngaySinh();
};
void Sinhvien::nhap(){
	Nguoi::nhap();
	cout <<"nhap ma sinh vien:";
	cin >> maSV;
	cout <<"nhap dien trung binh:";
	cin >>diemTB;
	cin.ignore();
}
void Sinhvien::in(){
	Nguoi::in();
	cout <<"Ma sinh vien: "<<this->maSV;
	cout <<"\nDiem trung binh: "<<diemTB<<endl<<endl;
	
}
string Sinhvien::getmaSV(){
	return maSV;
}
string Sinhvien::gethoDem(){
	return hoDem;
}
string Sinhvien::getten(){
	return ten;
}
double Sinhvien::getdiemTB(){
	return diemTB;
}
date Sinhvien::getngaySinh(){
	return ngayThang;
}
bool compare( Sinhvien a, Sinhvien b) {
    return a > b;
}
void inDiemCaoNhat(Sinhvien ds[],int n){
	cout <<"cac sinh vien co diem cao nhat:\n";
	double max = 0 ;
	for(int i = 0 ; i < n ; i++){
		if(ds[i].getdiemTB() > max){
			max = ds[i].getdiemTB();
		}
	}
	for(int i = 0 ; i < n ; i++){
		if(ds[i].getdiemTB() == max){
			ds[i].in();
		}
	}
}


int main(){
	int n ;
	cout <<"nhap so luong sinh vien: "; cin >>n;
	cin.ignore();
	Sinhvien ds[n];
	for(int i = 0 ; i < n ; i++){
		ds[i].nhap();
	}
	cout <<endl<<"-----------------------------------"<<endl<<endl;
	
	cout <<"danh sach sinh vien duoc sap xep:\n";
	sort(ds,ds+n,compare);
	for(int i = 0 ; i < n ; i++){
		ds[i].in();
	}
	cout <<endl<<"-----------------------------------"<<endl<<endl;
	inDiemCaoNhat(ds,n);
	
;	return 0;
}








