import json

def Restore_all_lend():
    with open("Lend_Books_Database.json",'r') as file:
        lend_books = json.load(file)
    
    return lend_books