import json

def Restore_all_books():
    with open("All_Books_Database.json",'r') as file:
        all_books = json.load(file)
    
    return all_books