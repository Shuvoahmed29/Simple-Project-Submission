import All_Books_Database
import random
import Input_error
import datetime

def Append_Book(all_books):
    title = input("Enter book title: ")
    author = input("Enter author name: ")
    ISBN = random.randint(10000, 99999)

    year = Input_error.int_validation("Enter publishing year: ")

    price = Input_error.float_validation("Enter book price: ")

    quantity = Input_error.int_validation("Enter available book number(Quantity): ")

    book_added_at = datetime.datetime.now().strftime("%d-%m-%y  %H:%M:%S")

    new_book = {
        "title":title,
        "author":author,
        "isbn":ISBN,
        "year":year,
        "price":price,
        "quantity":quantity,
        "book_added_at": book_added_at,
        "last_updated_at": None
    }

    all_books.append(new_book)
    All_Books_Database.Save_books(all_books)
    print("\nBook added successfully!\n")

    return all_books
