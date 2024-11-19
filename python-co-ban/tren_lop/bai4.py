import math

def distance(p1, p2):
  return math.sqrt((p1[0] - p2[0])**2 + (p1[1] - p2[1])**2)

def kt_loi(point, data, eps, minPts):
  count = 0
  for p in data:
    if distance(point, p) <= eps:
      count += 1
  return count >= minPts

def kt_nhieu(data, eps, minPts):
  kq = []
  for point in data:
    if not kt_loi(point, data, eps, minPts):
      kq.append(point)
  return kq


data = [(2, 4), (3, 4), (3,3), (5, 4), (6, 4), (6,5), (7, 3), (7, 4), (8, 2), (9, 4)]


eps = 1
minPts = 2


nhieu = kt_nhieu(data, eps, minPts)
print("Các điểm nhiễu:", nhieu)