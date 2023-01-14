import numpy as np
listOfPhones = []
for i in range(10):
    x = np.random.randint(905300000000, 905450000000, dtype='int64')
    listOfPhones.append(x)
listOfPhones

listOfIdentities = []
for i in range(10):
    x = np.random.randint(10000000000,99999999999, dtype='int64')
    listOfIdentities.append(x)
listOfIdentities