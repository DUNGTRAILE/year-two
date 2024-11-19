import math


def distance(p1, p2):
    return math.sqrt((p1[0] - p2[0]) ** 2 + (p1[1] - p2[1]) ** 2)


def is_noise(data, point, epsilon, minpts):
    neighbors = [p for p in data if distance(p, point) <= epsilon]
    if len(neighbors) >= minpts:
        return False
    for neighbor in neighbors:
        if not is_noise(data, neighbor, epsilon, minpts):
            return False
    return True



data = [(2, 4), (3, 4), (3,3), (5, 4), (6, 4), (6,5), (7, 3), (7, 4), (8, 2), (9, 4)]
epsilon = 1
minpts = 2

noise_points = []
for point in data:
    if is_noise(data, point, epsilon, minpts):
        noise_points.append(point)

print("Các điểm nhiễu:", noise_points)