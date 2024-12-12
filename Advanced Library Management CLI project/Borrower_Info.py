import Input_error
import Save_Lend
import datetime

def borrower_information(lend_books,lend_book_title):
    borrower_name = input("Enter your name: ")
    borrower_phone = Input_error.int_validation("Enter your phone number: ")
    borrower_book_title = lend_book_title
    borrower_book_return_date = 7
    print(f"\nReturn this({borrower_book_title}) book within 7 days!")

    book_lend_added_at = datetime.datetime.now().strftime("%d-%m-%y  %H:%M:%S")

    new_book_lend = {
        "borrower_name": borrower_name,
        "borrower_phone": borrower_phone,
        "borrower_book_title":borrower_book_title,
        "borrower_book_return_date":borrower_book_return_date,
        "book_lend_added_at" : book_lend_added_at
    }

    lend_books.append(new_book_lend)

    Save_Lend.Save_lend_books(lend_books)
    print("Book lended successfully!\n")

    return lend_books


