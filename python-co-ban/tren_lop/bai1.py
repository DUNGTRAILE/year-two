class Congnhan:
    def __init__(self, m='', t='', b=0, snlv=0, nkhd={'day': 0, 'month': 0, 'year': 0}):
        self.maCN = m
        self.ten = t
        self.bac = b
        self.soNgayLamViec = snlv
        self.ngayKyHopDong = nkhd

    def display(self):
        print('************************************************')
        print(f'thông tin cán bộ {self.ten}:')
        print(f'ma của công nhân: {self.maCN}')
        print(f'bậc của công nhân là {self.bac}')
        print(f'số ngày làm việc của công nhân là {self.soNgayLamViec}')
        # print(f'ngày ký hợp đồng với công nhân là {self.ngayKyHopDong}')
        tienLuong = 0
        if self.bac == 1:
            tienLuong = self.soNgayLamViec * 300000
        elif self.bac == 2:
            tienLuong = self.soNgayLamViec * 350000
        elif self.bac == 3:
            tienLuong = self.soNgayLamViec * 400000
        else:
            print('bậc không hợp lệ nên:')
        print(f'tiền lương công nhân nhận là {tienLuong}\n')

    def __gt__(self, cn):
        if self.ngayKyHopDong['year'] < cn.ngayKyHopDong['year']: return True
        if self.ngayKyHopDong['year'] == cn.ngayKyHopDong['year']:
            if self.ngayKyHopDong['month'] < cn.ngayKyHopDong['month']: return True
            if self.ngayKyHopDong['month'] == cn.ngayKyHopDong['month']:
                if self.ngayKyHopDong['day'] < cn.ngayKyHopDong['day']: return True
        return False


if __name__ == '__main__':
    thuTu = 1
    ds = []
    while 1:
        ss = 0
        print(f'nhập công nhân thứ {thuTu}:')
        ma = input('nhập mã công nhân: ')
        if ma == '':
            break
        for i in ds:
            if ma == i.maCN:
                ss += 1
                continue
        if ss != 0:
            print('nhập lại:')
            continue
        ten = input('nhập tên công nhân: ')
        bac = int(input('nhập bậc của công nhân(1<= bậc <= 3): '))
        snlv = int(input('nhập số ngày làm việc của công nhân: '))
        day, month, year = map(int, input('nhập ngày ký hợp đồng: ').split('/'))
        nkhd = {'day': day, 'month': month, 'year': year}
        cn = Congnhan(
            ma,
            ten,
            bac,
            snlv,
            nkhd
        )
        ds.append(cn)
        thuTu += 1

    for i in ds:
        i.display()
