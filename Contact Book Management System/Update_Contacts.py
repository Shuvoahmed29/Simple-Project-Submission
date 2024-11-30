import Prevent_Duplicate_Numbers as isexist
import csv
import Error_Handling as Error
import Prevent_Duplicate_Numbers as duplicate

def Update_Info():
    phone_number = input("\nEnter your phone number for update your information: ")
    if isexist.Duplicate_Check(phone_number):
        while True:
            print("\nWhich information you want to update?")
            print("Press 'n' for update name!")
            print("Press 'e' for update email!")
            print("Press 'pn' for update phone!")
            print("Press 'a' for update address!")
            choice = input("Enter your choice: ").lower()
        
            if choice == 'n':
                new_name = input("Enter new name: ")
                if not Error.CheckNameFormat(new_name):  continue
                break
            
            elif choice == 'e':
                new_email = input("Enter new email: ")
                if not Error.CheckEmailFormat(new_email): continue
                break
            
            elif choice == 'pn':
                new_phone_number = input("Enter new phone number: ")
                if not Error.CheckPhoneNumberFormat(new_phone_number): continue
                if duplicate.Duplicate_Check(new_phone_number):
                    print("\nThis contact is already added.\nTry Another!\n")
                    continue
                break
            
            elif choice == 'a':
                new_address = input("Enter new address: ")
                break
            
            else:
                print("\nInvalid input!.Try again!")
        

        try:
            with open("All Data.csv", "r") as file:
                allContact = list(csv.reader(file))

            updated_contact = []
            for item in allContact:
                if int(phone_number) == int(item[2]):
                    if choice == 'n': item[0] = new_name
                    if choice == 'e': item[1] = new_email
                    if choice == 'pn': item[2] = new_phone_number
                    if choice == 'a': item[3] = new_address
                updated_contact.append(item)

            with open("All Data.csv", "w", newline="") as file:
                writer = csv.writer(file)
                writer.writerows(updated_contact)
            print("\nContact information updated successfully!\n")

        except Exception as e:
            print(f"\nFound Error: {e}\n")

    else:
        print("\nPhone number is not found!\n")