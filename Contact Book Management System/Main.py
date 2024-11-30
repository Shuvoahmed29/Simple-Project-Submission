import Add_Contacts as add
import View_Contacts as view
import Remove_Contact as delete
import Search_Contacts as search

while True:
    print("\nPress 1 for add contact!")
    print("Press 2 for view all contacts!")
    print("Press 3 for remove contact!")
    print("Press 4 for search contact!")
    print("Press 5 for exist!\n")

    choice = input("Enter your choice: ")

    if choice == '1':
        print("\nFor adding new contact enter your information.\n")
        add.AddContacts()

    elif choice == '2':
        print("\nAll contacts details!\n")
        view.displayContacts()
    
    elif choice == '3':
        print("\nDelete a record from all contact!")
        delete.Delete_Info()

    elif choice == '4':
        search.Search_Contacts()
    
    elif choice == '5':
        break


    else:
        print("\nInvalid Input. Try Again!\n")