import csv

def Delete_Info():
    phone_number = input("\nEnter phone number for Delete contact: ")
    found = False

    try:
        with open("All Data.csv", "r") as file:
            allContact = list(csv.reader(file))

        updated_contact = []
        for item in allContact:
            if int(phone_number) == int(item[2]):
                found = True
            else:
                updated_contact.append(item)

        if found:
            with open("All Data.csv", "w", newline="") as file:
                writer = csv.writer(file)
                writer.writerows(updated_contact)
            print("\nContact information deleted successfully!\n")
        else:
            print("Phone number not found!\n")

    except Exception as e:
        print(f"\nFound Error: {e}\n")