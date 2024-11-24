#include<bits/stdc++.h>

using namespace std;

class TIME {
private:
    int hour;
    int minute;
    int second;

public:
    TIME() : hour(0), minute(0), second(0) {}
    TIME(int h, int m, int s) : hour(h), minute(m), second(s) {}
    TIME(const TIME &t) : hour(t.hour), minute(t.minute), second(t.second) {}

    void SetTime(int h, int m, int s) {
        hour = h;
        minute = m;
        second = s;
    }

    void SetHour(int h) { hour = h; }
    int GetHour() const { return hour; }

    void SetMinute(int m) { minute = m; }
    int GetMinute() const { return minute; }

    void SetSecond(int s) { second = s; }
    int GetSecond() const { return second; }

    bool Validate() const {
        return (hour >= 0 && hour < 24 && minute >= 0 && minute < 60 && second >= 0 && second < 60);
    }

    string ToString(string strFormat) const {
        stringstream ss;
        if (strFormat == "hh:mm:ss 24h")
            ss << setw(2) << setfill('0') << hour << ":" << setw(2) << setfill('0') << minute << ":" << setw(2) << setfill('0') << second;
        else if (strFormat == "hh:mm:ss 12h")
            ss << setw(2) << setfill('0') << (hour % 12 == 0 ? 12 : hour % 12) << ":" << setw(2) << setfill('0') << minute << ":" << setw(2) << setfill('0') << second << (hour >= 12 ? " PM" : " AM");
        return ss.str();
    }

    TIME operator+(const TIME &t) const {
        int s = second + t.second;
        int m = minute + t.minute + s / 60;
        int h = hour + t.hour + m / 60;
        return TIME(h % 24, m % 60, s % 60);
    }

    TIME operator-(const TIME &t) const {
        int total_sec1 = hour * 3600 + minute * 60 + second;
        int total_sec2 = t.hour * 3600 + t.minute * 60 + t.second;
        int diff = abs(total_sec1 - total_sec2);
        int h = diff / 3600;
        int m = (diff % 3600) / 60;
        int s = diff % 60;
        return TIME(h, m, s);
    }

    bool operator>(const TIME &t) const {
        return (hour > t.hour) || (hour == t.hour && minute > t.minute) || (hour == t.hour && minute == t.minute && second > t.second);
    }

    bool operator<(const TIME &t) const {
        return (hour < t.hour) || (hour == t.hour && minute < t.minute) || (hour == t.hour && minute == t.minute && second < t.second);
    }

    bool operator==(const TIME &t) const {
        return (hour == t.hour && minute == t.minute && second == t.second);
    }

    friend istream &operator>>(istream &is, TIME &t) {
        cout << "Nhap gio, phut, giay: ";
        is >> t.hour >> t.minute >> t.second;
        return is;
    }

    friend ostream &operator<<(ostream &os, const TIME &t) {
        os << setw(2) << setfill('0') << t.hour << ":" << setw(2) << setfill('0') << t.minute << ":" << setw(2) << setfill('0') << t.second;
        return os;
    }
};

void NhapMang(vector<TIME> &times, int n) {
    for (int i = 0; i < n; ++i) {
        TIME t;
        cout << "Nhap thoi gian thu " << i + 1 << ":\n";
        cin >> t;
        times.push_back(t);
    }
}

void XuatMang(const vector<TIME> &times) {
    for (const auto &t : times) {
        cout << t << " (24h): " << t.ToString("hh:mm:ss 24h") << "\n";
        cout << t << " (12h): " << t.ToString("hh:mm:ss 12h") << "\n";
    }
}

void LoaiBoNhoHon(vector<TIME> &times, const TIME &t) {
    times.erase(remove_if(times.begin(), times.end(), [&](const TIME &time) { return time < t; }), times.end());
}

void SapXepTangDan(vector<TIME> &times) {
    sort(times.begin(), times.end());
}

int main() {
    TIME t1, t2;
    cout << "Nhap thoi gian t1:\n";
    cin >> t1;
    cout << "Nhap thoi gian t2:\n";
    cin >> t2;

    cout << "Thoi gian t1 (24h): " << t1.ToString("hh:mm:ss 24h") << endl;
    cout << "Thoi gian t1 (12h): " << t1.ToString("hh:mm:ss 12h") << endl;
    cout << "Thoi gian t2 (24h): " << t2.ToString("hh:mm:ss 24h") << endl;
    cout << "Thoi gian t2 (12h): " << t2.ToString("hh:mm:ss 12h") << endl;

    cout << "Tong t1 + t2: " << (t1 + t2).ToString("hh:mm:ss 24h") << endl;
    cout << "Hieu t1 - t2: " << (t1 - t2).ToString("hh:mm:ss 24h") << endl;

    int n;
    cout << "Nhap so luong doi tuong thoi gian (n <= 100): ";
    cin >> n;
    vector<TIME> times;
    NhapMang(times, n);

    cout << "Mang thoi gian vua nhap:\n";
    XuatMang(times);

    TIME t;
    cout << "Nhap thoi gian t de loai bo cac doi tuong nho hon t:\n";
    cin >> t;
    LoaiBoNhoHon(times, t);
    cout << "Mang sau khi loai bo cac doi tuong nho hon t:\n";
    XuatMang(times);

    SapXepTangDan(times);
    cout << "Mang sau khi sap xep tang dan:\n";
    XuatMang(times);

    return 0;
}

