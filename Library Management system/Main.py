import Add_Book as add
import Recent_Added_Book as last
import Display_Books as display
import Update_Book as update
import Delete_Book as delete

last_added_book = []
while True:
    last_added_book.clear()
    print("Enter 1 for Add Book!")
    print("Enter 2 for Update Book!")
    print("Enter 3 for Delete Book!")
    print("Enter 4 for View Recent Added Book!")
    print("Enter 5 for View All Books!")
    print("Enter 6 for Exit!")

    choice = int(input("Enter your Choice: "))

    if choice == 1:
        print("\nFor add book please provide this information!")
        add.Append_Book(last_added_book)

    elif choice == 2:
        print("\nFor update specific book provide some information!\n")
        update.Change_Info()

    elif choice == 3:
        print("\nFor delete specific book provide some information!\n")
        delete.Delete_Info()
    
    elif choice == 4:
        print("\nRecent Added Book!")
        last.recent_book(last_added_book)

    elif choice == 5:
        print("\nAll Books list with details!\n")
        display.View()

    elif choice == 6:
        print("Thanks for using our Library Management System!")
        break

    else:
        print("Invalid Input. Try Again!!")