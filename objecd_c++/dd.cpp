#include<bits/stdc++.h>
using namespace std;


int ucln(int a, int b){
	if(b == 0){
		return a;
	}
	else{
		return ucln(b,a%b);
	}
}

class phanSo{
	private:
		int tu , mau;
	public:
		phanSo(){
			tu = 1;mau = 1;
		}
		phanSo(int tu,int mau);
		friend istream& operator >>(istream& in,phanSo& ps);
		friend ostream& operator <<(ostream& out,phanSo ps);
		phanSo operator + (phanSo ps2);
		phanSo operator - (phanSo ps2);
		phanSo operator * (phanSo ps2);
		phanSo operator / (phanSo ps2);
		void rutGon();
};

phanSo::phanSo(int tu, int mau){
	this->tu = tu;this->mau = mau;
}

void phanSo::rutGon(){
	int x = ucln(this->mau,this->tu);
	this->tu = tu / x;
	this->mau = mau / x;
}

istream& operator >>(istream& in,phanSo& ps){
	cout <<"nhap thong tin phan so:\n";
	cout <<"nhap tu: ";in>>ps.tu;
	cout <<"nhap mau: ";in >>ps.mau;
}
ostream& operator <<(ostream& out,phanSo ps){
	out <<"thong tin cua phan so la:\n";
	out <<"tu: "<<ps.tu<<endl<<"mau: "<<ps.mau<<endl;
}

phanSo phanSo::operator + (phanSo ps2){
	phanSo kq;
	kq.tu = this->tu*ps2.mau+this->mau*ps2.tu;
	kq.mau = this->mau*ps2.mau;
	kq.rutGon();
	return kq;
}

phanSo phanSo::operator - (phanSo ps2){
	phanSo kq;
	kq.tu = this->tu*ps2.mau-this->mau*ps2.tu;
	kq.mau = this->mau*ps2.mau;
	kq.rutGon();
	return kq;
}

phanSo phanSo::operator * (phanSo ps2){
	phanSo kq;
	kq.tu = this->tu*ps2.tu;
	kq.mau = this->mau*ps2.mau;
	kq.rutGon();
	return kq;
}

phanSo phanSo::operator / (phanSo ps2){
	phanSo kq;
	kq.tu = this->tu*ps2.mau;
	kq.mau = this->mau*ps2.tu;
	kq.rutGon();
	return kq;
}

int main(){
	phanSo ps1,ps2;
//	cout <<ucln(30,25);
	cin>>ps1>>ps2;
	cout<<ps1<<ps2;
//	ps1.rutGon();
//	cout <<ps1;
	cout <<ps1+ps2;
	return 0;
}
