import All_Books_Database
import datetime
import Input_error

def Change_Info(all_books):
    search_book_title = input("Enter book title for update info: ")
    found = False

    for book in all_books:
        if book['title'] == search_book_title:
            found = True
            print("\nPresent Record: ", book)
            print("\nWhich information do you want to update? \nTitle(t), Author(a), ISBN(i), Year(y), Price(p), Quantity(q)")
            ch = input("\nEnter your Choice (t/a/i/y/p/q): ").lower()

            if ch == 't':
                book['title'] = input("Enter new Title: ")
            elif ch == 'a':
                book['author'] = input("Enter new Author: ")
            elif ch == 'i':
                book['isbn'] = Input_error.int_validation("Enter new ISBN: ")
            elif ch == 'y':
                book['year'] = Input_error.int_validation("Enter new year: ")
            elif ch == 'p':
                book['price'] = Input_error.float_validation("Enter new price: ")
            elif ch == 'q':
                book['quantity'] = Input_error.int_validation("Enter new quantity: ")
            else:
                print("Invalid Choice!")
                break
            book['last_updated_at'] = datetime.datetime.now().strftime("%d-%m-%y  %H:%M:%S")

            print("\nUpdated Record: ", book)
            break

    if found:
        All_Books_Database.Save_books(all_books)
        print("\nInformation Updated Successfully!\n")
    else:
        print(f"{search_book_title} Book not found!\n")

    return all_books

