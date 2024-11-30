def remove_whitespace(string):
    return string.replace(" ", "")

def CheckNameFormat(Name):
    Name = remove_whitespace(Name)

    if Name.isalpha():
        return True
    else:
        print("\nThe contact name must be a string.")
        print("Try Again!\n")
        return False


def CheckEmailFormat(Email):
    if Email.find('@gmail.com') == -1:
        print("\nInvalid email address.")
        print("Try Again!\n")
        return False
    else: 
        return True


def CheckPhoneNumberFormat(PhoneNumber):
    if PhoneNumber.isdigit():
        return True
    else:
        print("\nThe phone number must be an integer.")
        print("Try Again!\n")
        return False
