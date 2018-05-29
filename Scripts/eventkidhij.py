double1 = open("degistirilecek.csv", "r")
numeric = open("degistirildi.csv", "w+")

double1 = double1.readlines()
for i in double1:
    if ";;" in i:
       continue
    else:
        numeric.write(i)
