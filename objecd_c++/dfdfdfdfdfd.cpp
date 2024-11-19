#include<bits/stdc++.h>
using namespace std;

class Account{
	protected:
		string usename,password;
	public:
		Account();
		Account(string,string);
		~Account(){}
		string getUsename();
		string getPassword();
		void setUsename(string);
		void setPassword(string);
};
Account::Account(){
	usename = "admin";password = "admin";
}
Account::Account(string use,string pass){
	usename = use; password = pass;
}

string Account::getUsename(){
	return usename;
}
string Account::getPassword(){
	return password;
}

void Account::setUsename(string use){
	usename = use;
}
void Account::setPassword(string pass){
	password = pass;
}

//lop date
class date{
	protected:
		int day , month,year;
	public:
		date();
		date(int,int,int);
		~date(){}
		int getDay();
		int getMonth();
		int getYear();
		void setDay(int);
		void setMonth(int);
		void setYear(int);
};
date::date(){
	day , month , year = 0;
}
date::date(int d , int m , int y):day(d),month(m),year(y){}
//get
int date::getDay(){return day;}
int date::getMonth(){return month;}
int date::getYear(){return year;}
//set
void date::setDay(int d){day = d;}
void date::setMonth(int m){month = m;}
void date::setYear(int y){year = y;}

//lop person
class person{
	protected:
		string name;
		int age;
		string address;
		date dob;
	public:
		person();
		person(string,int ,string,date);
		~person(){}
		string getName();
		int getAge();
		string getAddress();
		date getDob();
		void setName(string);
		void setAge(int);
		void setAddress(string);
		void setDob(date);	
};
person::person(){
	name,address = "";age = 0;
}
person::person(string n , int a , string add , date x){
	name = n ;
	age = a;
	address= add;
	dob = x;
}
//get
string person::getName(){return name;}
int person::getAge(){return age;}
string person::getAddress(){return address;}
date person::getDob(){return dob;}
//set
void person::setName(string n){name = n;}
void person::setAge(int a ){age = a;}
void person::setAddress(string n){address = n;}
void person::setDob(date d){dob = d;}

class student:public person{
	protected:
		string id,email,emailPassword,lop;
		Account acc;
		float gpa;
	public:
		student();
		~student(){}
		
		string getId(){return id; }
		void setId(string value) { id = value; }
				
		string getLop() { return lop; }
		void setLop(string value) { lop = value; }
		
		float getGpa() { return gpa; }
		void setGpa(float value) { gpa = value; }
		void capEmail();
		void capTaiKhoan();
};
student::student(){
	id,email,emailPassword,lop = "";
	gpa = 0.0;
}
void student::capEmail() {
    string ten = person::getName(); 
    stringstream ss(ten);
    string the;
    string lastWord;
    
    while (ss >> the) {
        lastWord = the;
        email += tolower(the[0]);
		for (char c : lastWord) {
        	emailPassword += tolower(c);
    	}	
    }
    int z = 0;
    for (char c : lastWord) {
    	if( z != 0){
    		email += tolower(c);
		}
        z++;
    }
	for(char c : id){
		emailPassword += tolower(c);
	}
	emailPassword +="@";
    email += "@husc.edu.vn";
    cout << email<<endl<<emailPassword<<endl;
}

void student::capTaiKhoan(){
	string ten = person::getName(); 
    stringstream ss(ten);
    string the,tam="";
    string lastWord;
    while (ss >> the) {
        lastWord = the;
		for (char c : lastWord) {
        	tam += toupper(c);
    	}	
    }
    acc.setUsename(tam);
    string name = acc.getUsename();
    
    tam ="";
	tam += (dob.getDay() < 10 ? "0" : "") + to_string(dob.getDay()) +
       (dob.getMonth() < 10 ? "0" : "") + to_string(dob.getMonth()) + to_string(dob.getYear());
	tam += "@";
	acc.setPassword(tam);
	string pass = acc.getPassword();
	cout <<"Usename:"<<name<<endl<<"pass:"<<pass<<endl;
	
}


int main(){
	student sv1;
	cout << "nhap ten sinh vien: ";
	string s ;
	getline(cin,s);
	sv1.setName(s);
	cout << "nhap lop sinh vien: ";
	getline(cin,s);
	sv1.setLop(s);
	cout << "nhap dia chi sinh vien: ";
	getline(cin,s);
	sv1.setAddress(s);
	cout << "nhap id sinh vien: ";
	getline(cin,s);
	sv1.setId(s);
	cout << "nhap GPA sinh vien: ";
	float gpa;
	cin >> gpa;
	sv1.setGpa(gpa);
	
	date d1;
	cout << "nhap ngay thang nam sinh sinh vien: \n";
	int day,month,year;
	cin >> day >> month >> year;
	d1.setDay(day);d1.setMonth(month);d1.setYear(year);
	sv1.setDob(d1);
	sv1.capEmail();
	sv1.capTaiKhoan();
	return 0;
}














