import csv

def Change_Info():
    isbn_no = int(input("Enter ISBN number for Update Book: "))
    found = False

    try:
        with open("Book File.csv", "r") as file:
            book = list(csv.reader(file))

            for item in book:
                if isbn_no == int(item[2]):
                    found = True
                    print("Present Record: ", item)
                    print("Which information do you want to update? \nTitle(t), Author(a), ISBN(i), Year(y), Price(p), Quantity(q)")
                    ch = input("Enter your Choice (t/a/i/y/p/q): ").lower()

                    if ch == 't':
                        item[0] = input("Enter new Title: ")
                    elif ch == 'a':
                        item[1] = input("Enter new Author: ")
                    elif ch == 'i':
                        item[2] = input("Enter new ISBN: ")
                    elif ch == 'y':
                        item[3] = input("Enter new Year: ")
                    elif ch == 'p':
                        item[4] = input("Enter new Price: ")
                    elif ch == 'q':
                        item[5] = input("Enter new Quantity: ")
                    else:
                        print("Invalid Choice!")
                        break

                    print("Updated Record: ", item)
                    break

            if found:
                with open("Book File.csv", "w", newline="") as file:
                    writer = csv.writer(file)
                    writer.writerows(book)
                    print("\nInformation Updated Successfully!\n")
            else:
                print("ISBN number not found!\n")

    except Exception as e:
        print(f"\nFound Error: {e}\n")

