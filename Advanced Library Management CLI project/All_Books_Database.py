import json
def Save_books(all_books):
    with open("All_Books_Database.json","w") as file:
            json.dump(all_books,file,indent=4)
