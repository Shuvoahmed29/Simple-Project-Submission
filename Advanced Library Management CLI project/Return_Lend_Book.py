import Save_Lend
import All_Books_Database

def Return_book(all_books,lend_books):
    found = False
    return_book_title = input("Enter book title fo return book : ")
    for book1 in lend_books:
        if book1['borrower_book_title'] == return_book_title:
            found = True
            lend_books.remove(book1)
            break
    
    if found:
        Save_Lend.Save_lend_books(lend_books)
        print("\nBorrower's Information Deleted Successfully!")
        for book in all_books:
            if book['title'] == return_book_title:
                book['quantity'] += 1
                break
        All_Books_Database.Save_books(all_books)
        print("Book Information Updated Successfully!\n")
    else:
        print(f"{return_book_title} Book not found!\n")

    return all_books,lend_books
    