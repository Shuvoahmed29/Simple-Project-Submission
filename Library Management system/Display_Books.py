import csv
def View():
    try:
       with open("Book File.csv","r") as file:
        book  = csv.reader(file)
        for item in book:
           print(f"Title: {item[0]} | Author: {item[1]} | ISBN: {item[2]} | Year: {item[3]} | Price: {item[4]} | Quantity: {item[5]}\n")  

    except Exception as e:
       print(f"Found '{e}' Error!")
    