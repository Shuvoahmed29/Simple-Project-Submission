import Add_Book
import Display_Books as display
import Update_Book as update
import Delete_Book as delete
import Restore_books
import Lend_Book
import Lend_books_restore
import Return_Lend_Book
import Display_Lend_Books

all_books = []
all_books = Restore_books.Restore_all_books()

lend_books = []
lend_books = Lend_books_restore.Restore_all_lend()

while True:
    print("Welcome to Library Management System")
    print("Enter 1 for Add Book!")
    print("Enter 2 for Update Book!")
    print("Enter 3 for Delete Book!")
    print("Enter 4 for Display All Books!")
    print("Enter 5 for Lend Book!")
    print("Enter 6 for Return Lend Book!")
    print("Enter 7 for Display All Lend Books!")
    print("Enter 8 for Exit!")

    choice = input("Enter your Choice: ")

    if choice == '1':
        print("\nFor add book please provide this information!")
        all_books = Add_Book.Append_Book(all_books)

    elif choice == '2':
        print("\nFor update specific book provide some information!\n")
        all_books = update.Change_Info(all_books)

    elif choice == '3':
        print("\nFor delete specific book provide some information!\n")
        all_books = delete.Delete_Info(all_books)

    elif choice == '4':
        display.View(all_books)
    
    elif choice == '5':
        all_books,lend_books = Lend_Book.lend_book(all_books,lend_books)
    
    elif choice == '6':
        all_books,lend_books = Return_Lend_Book.Return_book(all_books,lend_books)
    
    elif choice == '7':
        Display_Lend_Books.View_lend(lend_books)

    elif choice == '8':
        print("\nThanks for using our Advance Library Management CLI!\n")
        break

    else:
        print("Invalid Input. Try Again!!")