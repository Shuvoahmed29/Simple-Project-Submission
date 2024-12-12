import json
def Save_lend_books(lend_books):
    with open("Lend_Books_Database.json","w") as file:
            json.dump(lend_books,file,indent=4)
