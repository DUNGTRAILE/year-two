import numpy as np

def chuan_hoa_z_score(X):
  mu = np.mean(X)
  sigma = np.std(X)
  new_X = [(x - mu) / sigma for x in X]
  return new_X


data = [1, 2, 3, 4, 5]
data1 = chuan_hoa_z_score(data)
print(data1)