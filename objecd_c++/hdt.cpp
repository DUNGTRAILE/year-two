#include<bits/stdc++.h>
using namespace std;

// cac phuong  thuc cua class
//private
//public
//protected
//friend function
class sinhVien{
	friend class giaoVien;
	private:
		string id , ten, ns;
		double gpa;
		static int dem;
	public:
		sinhVien();
		sinhVien(string ,string,string,double);
		void nhap();
		void in();
		friend void inThongTin(sinhVien a);
		void tangDem();
		int getDem();
		friend void chuanHoa(sinhVien&);
		friend istream& operator >> (istream &in,sinhVien& sv);
		friend ostream& operator << (ostream &out,sinhVien sv);
//		~sinhVien();
};

istream& operator >> (istream &in,sinhVien& sv){
	cout <<"nhap thong tin cua sinh vien:\n";
	cout <<"nhap ten:";getline(in,sv.ten);
	cout <<"nhap ngay thang nam sinh:";getline(in,sv.ns);
	cout <<"nhap gpa:";in >> sv.gpa;
}

ostream& operator << (ostream &out,sinhVien sv){
	out <<"thong tin sinh vien co id "<<sv.id<<endl;
	out <<"ten: "<< sv.ten<<endl;
	out <<"ngay sinh: "<<sv.ns<<endl;
	out <<"gpa: "<<sv.gpa;
}

void chuanHoa(sinhVien& a){
	string res = "";
	stringstream ss(a.ten);
	string token;
	while (ss >> token ){
		res += toupper(token[0]);
		for(int i = 1 ; i < token.length();i++){
			res += tolower(token[i]) ;
		}
		res += " ";
	}
	res.erase(res.length()-1);
	a.ten = res;
}

void inThongTin(sinhVien a){
	cout <<  a.id;
}

int sinhVien::dem = 0;
void sinhVien::tangDem(){
	++dem;
}

int sinhVien::getDem(){
	return dem;
}
//ham tao
sinhVien::sinhVien(){
	++dem;
	this->id = "SV" + string(3-to_string(dem).length(),'0')+to_string(dem);
	ten ="";ns="";gpa = 0.0;
}
sinhVien::sinhVien(string ma,string tensv , string nssv, double gpa){
	++dem;
	this->id = "SV" + string(3-to_string(dem).length(),'0')+to_string(dem);
	ten = tensv;
	ns = nssv;
	this->gpa = gpa;
}

void sinhVien::nhap(){
	cout <<"nhap thong tin :\n";
	cout <<"+nhap ho va ten:";getline(cin,ten);
	cout <<"+nhap ngay sinh: ";getline(cin,ns);
	cout <<"+nhap gpa: ";cin >>gpa;
	cin.ignore();
}

void sinhVien::in(){
	cout <<"thong tin cua sinh vien co ma "<<id<<endl;
	cout <<"+ten: "<<ten;
	cout <<"\n+ngay thang nam sinh: "<<ns;
	cout <<"\n+gpa: "<<gpa<<endl;
}
//sinhVien::~sinhVien(){
//	cout << "ddax huy";
//}

class giaoVien{
	private:
		string khoa;
	public:
		void update(sinhVien&);
};

void giaoVien::update(sinhVien& a){
	a.gpa = 3.70;
}
int main(){
	sinhVien a ;
	cin >> a;
	chuanHoa(a);
	cout << a;
	giaoVien gv;
	gv.update(a);
	cout << a;
//	string a = "SV" + string(3,'0');
//	cout <<a;
	return 0;
}




















