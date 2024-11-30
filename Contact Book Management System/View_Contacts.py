import csv
def displayContacts():
    try:
       with open("All Data.csv","r") as file:
        allContacts  = csv.reader(file)
        for item in allContacts:
           print(f"Name: {item[0]} | Email: {item[1]} | Phone Number: {item[2]} | Address: ",end='')
           for i in range(3, len(item)):
                print(item[i],end='')
                if(i != len(item)-1): print(', ',end='')
                else: print(' ',end='')
           print()

    except Exception as e:
       print(f"Found '{e}' Error!")