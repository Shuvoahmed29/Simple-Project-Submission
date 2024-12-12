
def View_lend(lend_books):
    if lend_books != []:
        print("\nAll Lend Books list with details!\n")
        for book in lend_books:
            print(f"Borrower's Name: {book['borrower_name']} | Borrower's Phone: {book['borrower_phone']} | Borrowed Book Title: {book['borrower_book_title']} | Book Lend Date: {book['book_lend_added_at']}\n")
    
    else:
        print("\nNo lend book available!\n")