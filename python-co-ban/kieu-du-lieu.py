# a = 'thân văn dũng'
# # print(a//b) # chia lấy phần nguyên
# # print(a/b) #chia lấy cả phần thập phân
# # print(a%b) #chia lấy phần dư
# # print(a**b) # tmp= a^b
# print('a' is not a)
# print('Tính chu vi hình chữ nhật')
# b = float(input('Nhập chiều dài: '))
# a = float(input('Nhập chiều rộng: '))
# print('Chu vi là: ',(a+b)*2)
# from itertools import filterfalse
# from operator import truediv
from idlelib.colorizer import prog_group_name_to_tag


# #Bước 1: nhập dữ liệu
# s = input('nhập 3 số: ')
# #bước 2: tách dữ liệu
# a = s.split() # dùng hàm split để tách thành các từ riêng
# #Bước 3: ep kiểu dữ liệu các từ thành kiểu dữ liệu mình muốn
# b,c,d = map(int,a)
# print(b,c,d)
#viết ngắn gọn
# b,c,d = map(int, input('nhập 3 số: ').split())
# print(b+c+d)
# print(type(b),type(c),type(d),end=' @@')


#CÁC HÀM TOÁN HỌC PHỔ BIẾN
# from math import *    ;import math
# print(ceil(454.7)) #ceil() làm tròn lên số nguyên gần nhất
# print(floor(454.7)) # làm tròn xuống số nguyên gần nhất
# print(isqrt(4))  # căn bậc hai của 4
# print(round(45.343434,2)) # làm tròn đến 2 số thập phân
# x = 27
# n = 3
# print(int(pow(x,1/n))) #tính căn n của x

#cấu trúc rẽ nhánh
# a = int(input('nhập so cần kiểm tra: '))
# if a > 30 and a < 50 : print('đúng')
# else : print('sai')
# print('đúng') if 100 > 200 else print('sai')


#vòng Lặp for
# kq= 0
# for i in range(2,51):
#     s = 0
#     for j in range(1,i+1):
#         if i % j == 0:
#             s+=1
#         if s > 2:
#             break
#     if s == 2:
#         kq+=1
# print(kq)

# n = 1
# while n < 5:
#     print(n,end=' ')
#     n += 1
# else:
#     print('kết thúc vòng lặp')


#hàm trong python

# def tong (a , b):
#     kq = a + b
#     return kq
#
# def khoi_dong (a, b , c):
#     print('Xin Chào',a, b, c)
#
# if __name__ == '__main__':
#     a , b = map(int,input('nhập hai số a và b: ').split())
#     x , y , z = 'dũng', 'quân' , 'tuấn'
#     print(tong(a,b))
#     print(khoi_dong( a = z , b = y , c = x ))

# làm trò chơi kéo búa bao
from random import randint
if __name__ == '__main__':
    player = input('nhập lựa chọn của bạn: ')
    computer = randint(0,2)

    if computer == 0:
        computer = 'kéo'
    elif computer == 1:
        computer = 'búa'
    elif computer == 2:
        computer = 'vải'
    if player == 'kéo':
        if computer == 'kéo':
            print('bạn ra', player , 'máy ra ' , computer)
            print('hòa')
        if computer == 'búa':
            print('bạn ra', player , 'máy ra ' , computer)
            print('thua')
        if computer == 'vải':
            print('bạn ra', player , 'máy ra ' , computer)
            print('thắng')
    elif player == 'búa':
        if computer == 'kéo':
            print('bạn ra', player , 'máy ra ' , computer)
            print('thắng')
        if computer == 'búa':
            print('bạn ra', player , 'máy ra ' , computer)
            print('hòa')
        if computer == 'vải':
            print('bạn ra', player , 'máy ra ' , computer)
            print('thua')
    elif player == 'vải':
        if computer == 'kéo':
            print('bạn ra', player , 'máy ra ' , computer)
            print('thua')
        if computer == 'búa':
            print('bạn ra', player , 'máy ra ' , computer)
            print('thắng')
        if computer == 'vải':
            print('bạn ra', player , 'máy ra ' , computer)
            print('hòa')
    else :
        print('bạn nhập sai!')

# import pygame
# print(help(pygame))



# # luyện tập viết hàm
# # hàm kiểm tra số nguyên tố
# def NT (a):
#     s = 0
#     if a == 2 : return True
#     for i in range(2,a):
#         if a % i == 0:
#             s+=1
#             break
#     if s == 0 : return True
#     else : return False
#
# #hàm in tổng chữ số của một số
# def soSoHang (a):
#     kq = 0
#     if a == 0 :return 0
#     while a != 0:
#         kq += 1
#         a //= 10
#     return kq
#
# #hàm in tổng chữ số chẵn của một số
# def tongSoChan (a):
#     kq = 0
#     if a == 0 : return 1
#     while a != 0 :
#         s = a % 10
#         if s % 2 == 0:
#             kq += 1
#         a //= 10
#     return kq
#
# #tổng chữ số của một số là số nguyên tố
# def tongNguyenTo (a):
#     kq = 0
#     while a != 0:
#         s = a % 10
#         if s == 2 or s == 3 or s == 5 or s == 7: kq += s
#         a //=10
#     return kq
#
# #hàm in số đảo ngược
# def daoNguoc (a):
#     kq = 0
#     while a != 0:
#         s = a % 10
#         kq = kq*10 + s
#         a //= 10
#     return kq
#
# #hàm tính số ước là số nguyên tố
# def USNT (a):
#     kq = 0
#     for i in range(1,a+1):
#         if a % i == 0 and NT(i):
#             kq += 1
#     return kq
# #hàm main
# if __name__ == '__main__':
#     so = int(input('nhập số nguyên dương để kiểm tra: '))
#     if NT(so):
#         print('Số nguyên tố')
#     else :
#         print('không phải số nguyên tố')
#     print('-Tổng chữ số: ',soSoHang(so),'\n-Tổng chữ số chẵn: ',tongSoChan(so))
#     print('-Tổng của các số nguyên tố trong số: ',tongNguyenTo(so))
#     print('-Số đảo ngược: ', daoNguoc(so),'\n-Số lượng ước là số nguyên tố: ' , USNT(so))

#hàm đệ quy

#hàm tính tổng n số nguyên đầu tiên
# def tong (n):
#     if n == 1: return 1
#     return n + tong(n-1)
# #hàm tính n giai thừa
# def giaiThua (n):
#     if n == 1: return 1
#     return n * giaiThua(n-1)
# #hàm tính tổng của các chữ số
# def tongChuSo (n):
#     if n == 0: return 0
#     return n%10 + tongChuSo(n//10)


# if __name__ == '__main__':
#     n = int(input('nhập số cần tính: '))
#     print('tổng là: ',tong(n))
#     # print('giai thừa là: ',giaiThua(n))
#     print('tong các chữ số: ',tongChuSo(n))










