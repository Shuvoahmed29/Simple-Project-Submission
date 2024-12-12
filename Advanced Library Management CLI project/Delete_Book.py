import All_Books_Database


def Delete_Info(all_books):
    search_book_title = input("Enter book title for delete book: ")
    found = False

    for book in all_books:
        if book['title'] == search_book_title:
            found = True
            all_books.remove(book)
            break

    if found:
        All_Books_Database.Save_books(all_books)
        print("\nBook Deleted Successfully!\n")
    else:
        print(f"{search_book_title} Book not found!\n")

    return all_books

