newcsv = open("editedtext.csv", "w+")

maincsv = open("maintext.csv", "r")
maincsv = maincsv.readlines()
for i in maincsv:
    tmp = i.split(";")
    for j in range(len(tmp)):
        if j != 0 :
            newcsv.write(tmp[0])
            newcsv.write(";")
            newcsv.write(tmp[j])
            newcsv.write(";")
            newcsv.write(str(j))
            newcsv.write("\n")
