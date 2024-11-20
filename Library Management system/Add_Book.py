import All_Book_File as bfile

def Append_Book(last_added_book):
    title = input("Enter book title: ")
    author = input("Enter author name: ")
    ISBN = int(input("Enter ISBN number: "))
    year = int(input("Enter publishing year: "))
    price = float(input("Enter book price: "))
    quantity = int(input("Enter available book number(Quantity): "))

    all_book = {
        "title":title,
        "author":author,
        "isbn":ISBN,
        "year":year,
        "price":price,
        "quantity":quantity
    }

    last_added_book.append(all_book)
    print("\nBook added successfully!\n")

    bfile.Save_book(last_added_book)
    return last_added_book
