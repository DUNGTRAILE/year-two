#include<bits/stdc++.h>
using namespace std;

class car{
	protected:
		string maSo;
		string maMau;
		int maLuc;
	public:
		car(){
			maSo = "0000";
			maMau = "#0928";
			maLuc = 0;
		}
		car(string maSo,string maMau,int maLuc){
			this->maSo = maSo;
			this->maMau = maMau;
			this->maLuc = maLuc;
		}
		nhap(){
			cout <<"nhap ma so xe: ";cin>>maSo;
			cout <<"nhap ma mau xe: ";cin>>maMau;
			cout <<"nhap ma luc: ";cin>>maLuc;
		}
		in(){
			cout<<"ma so xe"<<maSo<<endl;
			cout<<"ma mau xe"<<maMau<<endl;
			cout<<"ma luc xe"<<maLuc<<endl;
		}
};
class xeDua:public car{
		string mauXe;
		int tocDo;
	public:
		xeDua():car(){
			maSo = "0000";
			maMau = "#0928";
			maLuc = 0;
			mauXe ="dua";
			tocDo = 100;
		}
		xeDua(string maSo,string maMau,int maLuc, string mauXe,int tocDo):car(maSo,maMau,maLuc){
			this->mauXe = mauXe;
			this->tocDo = tocDo;
		}
		nhap(){
			car::nhap();
			cout << "nhap mau xe: ";cin >>mauXe;
			cout << "nhap toc do xe: ";cin >>tocDo;
		}
		in(){
			car::in();
			cout<<"ma mau xe"<<mauXe<<endl;
			cout<<"toc do xe"<<tocDo<<endl;
		}	
};

int main(){
	car vf3("vin003","#0021",300);
	xeDua lambo("lb0392","#3923",1000,"dua",2030);
	vf3.nhap();
	cout <<endl<<"nhap xe ";
	lambo.nhap();
	cout <<endl;
	lambo.in();
	cout <<endl;
	vf3.in();
	return 0;
}








