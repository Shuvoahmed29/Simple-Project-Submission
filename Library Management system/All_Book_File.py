import csv
def Save_book(all_book):
    with open("Book File.csv","a") as file:
        for book in all_book:
            line = f"{book['title']}, {book['author']}, {book['isbn']}, {book['year']}, {book['price']}, {book['quantity']}\n"
            file.write(line)
