import csv

def save_information(ContactsInfo):
    try:
        with open("All Data.csv","a") as file:
            line = f"{ContactsInfo['name']}, {ContactsInfo['email']}, {ContactsInfo['phone_number']}, {ContactsInfo['address']}\n"
            file.write(line)
            print("\nContact added successfully!\n")
    except Exception as e:
        print(f"Find Error: {e}")
    