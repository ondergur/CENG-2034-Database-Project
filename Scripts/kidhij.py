kidhij = open("onlykidhij.csv" , "r")
editedkidhijcountry = open("editedkidhijcountry.csv", "w+")
kidhij = kidhij.readlines()

country = open("onlycountry.csv", "r")
country = country.readlines()

for i in kidhij:
    for j in country:
        j = j.split(";")
        if i == j[1]:
            editedkidhijcountry.write(i)
            editedkidhijcountry.write(";")
            editedkidhijcountry.write(j[0])
            editedkidhijcountry.write("\n")
        else:
            editedkidhijcountry.write(j[0])
            editedkidhijcountry.write(";")
            editedkidhijcountry.write(j[1])
            editedkidhijcountry.write("\n")
