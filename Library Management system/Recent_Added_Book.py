
def recent_book(last_added_book):
    for book in last_added_book:
        print(f"Book Title: {book['title']}\nAuthor: {book['author']}\nISBN No. {book['isbn']}\nPublishing year: {book['year']}\nPrice: {book['price']}\nQuantity: {book['quantity']}\n")