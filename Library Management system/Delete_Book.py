import csv

def Delete_Info():
    isbn_no = int(input("Enter ISBN number for Delete Book: "))
    found = False

    try:
        with open("Book File.csv", "r") as file:
            book = list(csv.reader(file))

        updated_book = []
        for item in book:
            if isbn_no == int(item[2]):
                found = True
            else:
                updated_book.append(item)

        if found:
            with open("Book File.csv", "w", newline="") as file:
                writer = csv.writer(file)
                writer.writerows(updated_book)
            print("\nInformation Deleted Successfully!\n")
        else:
            print("ISBN number not found!\n")

    except Exception as e:
        print(f"\nFound Error: {e}\n")

