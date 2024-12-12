
def View(all_books):
    if all_books != []:
        print("\nAll Books list with details!\n")
        for book in all_books:
            print(f"Title: {book['title']} | Author: {book['author']} | ISBN No: {book['isbn']} | Publishing Year: {book['year']} | Price: {book['price']} | Quantity: {book['quantity']} | Book Added At: {book['book_added_at']} | Last Update: {book['last_updated_at']}\n")
    
    else:
        print("\nNo book available!\n")