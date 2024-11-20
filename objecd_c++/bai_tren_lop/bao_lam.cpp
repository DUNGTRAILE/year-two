#include<bits/stdc++.h>
using namespace std;

class ThiSinh{
    protected:
        string SBD , HoTen,DiaChi;
        double diemUuTien;
    public:
        ThiSinh(string,string,string,double);
        virtual void nhap();
        virtual void xuat();
        bool operator > (const ThiSinh&);
        virtual double tongDiem() = 0;
        virtual int getKhoi() = 0;
};

ThiSinh::ThiSinh(string SDB = "",string ten = "",string dc = "",double diem = 0.0){
    this->SBD = SBD;
    this->HoTen = ten;
    this->DiaChi = dc;
    this->diemUuTien = diem;
}
void ThiSinh::nhap(){
    cout << "============================="<<endl;
    cout <<"Nhap thong tin thi sinh:\n";
    cout << "Nhap SBD: ";
    cin >> SBD;
    cin.ignore();
    cout << "Nhap Ho Ten: ";
    getline(cin,HoTen);
    cout << "Nhap Dia Chi: ";
    getline(cin,DiaChi);
    cout << "Nhap Diem Uu Tien: ";
    cin >> diemUuTien;
    cin.ignore();
}
void ThiSinh::xuat(){
    cout << "============================="<<endl;
    cout << "Thong tin thi sinh:\n";
    cout << "SBD: " << SBD << endl;
    cout << "Ho Ten: " << HoTen << endl;
    cout << "Dia Chi: " << DiaChi << endl;
    cout << "Diem Uu Tien: " << diemUuTien << endl;
}
bool ThiSinh::operator > (const ThiSinh& ts){
    return this->HoTen > ts.HoTen;
}

class ThiSinh_KhoiTN:public ThiSinh{
    private:
        double diemToan, diemLy,diemHoa;
    public:
        ThiSinh_KhoiTN(string,string,string,double,double,double,double);
        void nhap();
        void xuat();
        double tongDiem();
        int getKhoi(){
            return 1;
        }
};
ThiSinh_KhoiTN::ThiSinh_KhoiTN(string SDB = "",string ten = "",string dc = "",double diem = 0.0,double t = 0.0, double l = 0.0, double h = 0.0)
: ThiSinh(SDB, ten, dc, diem), diemToan(t), diemLy(l), diemHoa(h){}
void ThiSinh_KhoiTN::nhap(){
    ThiSinh::nhap();
    cout << "Nhap diem toan:";
    cin >> diemToan;
    cout << "Nhap diem ly:";
    cin >> diemLy;
    cout << "Nhap diem hoa:";
    cin >> diemHoa;
    cin.ignore();
}
double ThiSinh_KhoiTN::tongDiem(){
    return diemToan + diemLy + diemHoa + diemUuTien;
}
void ThiSinh_KhoiTN::xuat(){
    ThiSinh::xuat();
    cout << "Diem Toan: " << diemToan << endl;
    cout << "Diem Ly: " << diemLy << endl;
    cout << "Diem Hoa: " << diemHoa << endl;
    cout << "Tong Diem: " << this->tongDiem() << endl;
}

class ThiSinh_KhoiXH:public ThiSinh{
    private:
        double diemVan, diemSu,diemDia;
    public:
        ThiSinh_KhoiXH(string,string,string,double,double,double,double);
        void nhap();
        void xuat();
        double tongDiem();
        int getKhoi(){
            return 2;
        }
};
ThiSinh_KhoiXH::ThiSinh_KhoiXH(string SDB = "",string ten = "",string dc = "",double diem = 0.0,double t = 0.0, double l = 0.0, double h = 0.0)
: ThiSinh(SDB, ten, dc, diem), diemVan(t), diemSu(l), diemDia(h){}
void ThiSinh_KhoiXH::nhap(){
    ThiSinh::nhap();
    cout << "Nhap diem toan:";
    cin >> diemVan;
    cout << "Nhap diem ly:";
    cin >> diemSu;
    cout << "Nhap diem hoa:";
    cin >> diemDia;
    cin.ignore();
}
double ThiSinh_KhoiXH::tongDiem(){
    return diemVan + diemSu + diemDia + diemUuTien;
}
void ThiSinh_KhoiXH::xuat(){
    ThiSinh::xuat();
    cout << "Diem Van: " << diemVan << endl;
    cout << "Diem Su: " << diemSu << endl;
    cout << "Diem Dia: " << diemDia << endl;
    cout << "Tong Diem: " << this->tongDiem() << endl;
}

bool ss(ThiSinh* a,ThiSinh* b){
    return a > b;
}

void xuatThiSinhTheoKhoi(const vector<ThiSinh*>& ds) {
    cout << "-------------------------------" << endl;
    cout << "Danh sach thi sinh Khoi Tu Nhien:" << endl;
    cout << "-------------------------------" << endl;
    for(int i = 0 ; i < ds.size(); i++){
        if(ds[i]->getKhoi() == 1){
            ds[i]->xuat();
        }
    }
    cout << "-------------------------------" << endl;
    cout << "Danh sach thi sinh Khoi Xa Hoi:" << endl;
    cout << "-------------------------------" << endl;
    for(int i = 0 ; i < ds.size(); i++){
        if(ds[i]->getKhoi() == 2){
            ds[i]->xuat();
        }
    }
}
void thiSinhDau(vector<ThiSinh*> ds){
    cout <<"===================================="<<endl;
    cout << "Danh sach thi sinh dau:" << endl;
    for(int i = 0 ; i < ds.size(); i++){
        if((ds[i]->getKhoi() == 1 && ds[i]->tongDiem() >= 22)){
            ds[i]->xuat();
        }
        if((ds[i]->getKhoi() == 2 && ds[i]->tongDiem() >= 19)){
            ds[i]->xuat();
        }
    }
}

int main(){
    vector<ThiSinh*> ds;
    ds.push_back(new ThiSinh_KhoiTN("TS01", "Nguyen Van A", "Ha Noi", 0.5, 8, 7, 9));
    ds.push_back(new ThiSinh_KhoiXH("TS02", "Tran Thi B", "Ho Chi Minh", 0.5, 9, 8, 7));
    ds.push_back(new ThiSinh_KhoiTN("TS03", "Le Van C", "Da Nang", 0.5, 7, 9, 8));
    ds.push_back(new ThiSinh_KhoiXH("TS04", "Nguyen Thi D", "Ha Noi", 0.5, 8, 7, 9));
    ds.push_back(new ThiSinh_KhoiTN("TS05", "Tran Van E", "Ho Chi Minh", 0.5, 9, 8, 7));
    ds.push_back(new ThiSinh_KhoiXH("TS06", "Le Thi F", "Da Nang", 0.5, 7, 9, 8));
    ds.push_back(new ThiSinh_KhoiTN("TS07", "Nguyen Van G", "Ha Noi", 0.5, 8, 7, 9));
    ds.push_back(new ThiSinh_KhoiXH("TS08", "Tran Thi H", "Ho Chi Minh", 0.5, 9, 8, 7));
    ds.push_back(new ThiSinh_KhoiTN("TS09", "Le Van I", "Da Nang", 0.5, 7, 9, 8));
    ds.push_back(new ThiSinh_KhoiXH("TS10", "Nguyen Thi J", "Ha Noi", 0.5, 8, 7, 9));
    // int n;
    // cout << "Nhap so luong thi sinh(n<=50): ";
    // cin >> n;
    // for(int i = 0; i < n; i++){
    //     ThiSinh* tmp;
    //     cout << "Nhap thong tin thi sinh thu " << i+1 << endl;
    //     cout << "Khoi cua thi sinh(1:Khoi TN,2:Khoi XH) la:";
    //     int chon;
    //     cin >> chon;
    //     if( chon == 1){
    //          tmp = new ThiSinh_KhoiTN();
    //     }
    //     else if(chon == 2){
    //         tmp = new ThiSinh_KhoiXH();
    //     }
    //     else{
    //         cout << "Khoi khong hop le, xin moi chon lai!" << endl;
    //         --i;
    //         continue;
    //     }
    //     tmp->nhap();
    //     ds.push_back(tmp);
    // }
    sort(ds.begin(),ds.end(),ss);
    for(int i = ds.size() - 1 ; i >= 0; i--){
        ds[i]->xuat();
    }
    xuatThiSinhTheoKhoi(ds);
    thiSinhDau(ds);
    return 0;
}