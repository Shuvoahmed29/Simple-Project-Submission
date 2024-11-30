import csv

def Duplicate_Check(phone_number):

    try:
        with open("All Data.csv", "r") as file:
            allContact = list(csv.reader(file))

        for item in allContact:
            if int(phone_number) == int(item[2]):
                return True
        return False

    except Exception as e:
        print(f"\nFound Error: {e}\n")