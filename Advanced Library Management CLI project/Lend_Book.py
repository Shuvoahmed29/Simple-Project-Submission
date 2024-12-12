import Borrower_Info
import Lend_books_restore
import All_Books_Database



def lend_book(all_books,lend_books):
    found = False
    available = True
    lend_book_title = input("\nEnter book title for lend: ")
    for book in all_books:
        if book['title'] == lend_book_title:
            if book['quantity']>0:
                found = True
                book['quantity'] -= 1
                lend_books = Borrower_Info.borrower_information(lend_books,lend_book_title)
                break

            else:
                print("\nThere are not enough books available to lend.\n")
                available = False
                break

    if found:
        All_Books_Database.Save_books(all_books)
        print("Information Updated Successfully!\n")
    elif available:
        print(f"{lend_book_title} book is not available.\n")
    
    return all_books,lend_books