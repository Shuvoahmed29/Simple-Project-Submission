import csv

def Search_Contacts():
    phone_number = input("\nEnter phone number for search contact details: ")
    found = False

    try:
        with open("All Data.csv", "r") as file:
            allContact = list(csv.reader(file))

        for item in allContact:
            if int(phone_number) == int(item[2]):
                print("\nPhone number is found. Contact details is")
                found = True
                print(f"Name: {item[0]} | Email: {item[1]} | Phone Number: {item[2]} | Address: ",end='')
                for i in range(3, len(item)):
                    print(item[i],end='')
                    if(i != len(item)-1): print(', ',end='')
                    else: print(' ',end='')
                print()
                break
        if not found:
            print("\nPhone number is not found!\n")

    except Exception as e:
        print(f"\nFound Error: {e}\n")