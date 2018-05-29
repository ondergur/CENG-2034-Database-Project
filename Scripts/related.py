import re
import csv

file = open("yeni.csv", "w+")
with open("Related.csv","r") as csvfile:
    line = csv.reader(csvfile, delimiter=' ', quotechar=';')
    for row in line:
        for i in row:
            if not ( i[1].isnumeric()):
                i = i[3:len(i)]
            if ";" in i :
                tmp = i.split(";")
                for j in range(len(tmp)-1) :
                    if j!=0 & len(tmp) != 1:
                        file.write(re.sub('[^0-9]','', tmp[0])+ ";" + re.sub('[^0-9]','', tmp[j]) + "\n")
						