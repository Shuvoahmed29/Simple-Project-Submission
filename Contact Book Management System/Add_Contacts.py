import Error_Handling as Error
import All_Contacts_File as csvFile
import Prevent_Duplicate_Numbers as duplicate

def AddContacts():
    while True:
        Name = input("Enter your name: ")
        Email = input("Enter your email: ")
        PhoneNumber = input("Enter your phone number: ")
        Address = input("Enter your address: ")

        if not Error.CheckNameFormat(Name):  continue
    
        elif not Error.CheckEmailFormat(Email): continue
    
        elif not Error.CheckPhoneNumberFormat(PhoneNumber): continue

        if duplicate.Duplicate_Check(PhoneNumber):
            print("\nThis contact is already added.\nTry Another!\n")
            continue
    
    
        if Error.CheckNameFormat(Name) and Error.CheckEmailFormat(Email) and Error.CheckPhoneNumberFormat(PhoneNumber) and not duplicate.Duplicate_Check(PhoneNumber):
            ContactsInfo={
                'name':Name,
                'email':Email,
                'phone_number':PhoneNumber,
                'address':Address
            }

            csvFile.save_information(ContactsInfo)
            break