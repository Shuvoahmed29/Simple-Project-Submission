def int_validation(str):
    while True:
        try:
            value = int(input(str))
            if value>0: break
            else: 
                print("\nInvalid input.Please enter a valid positive integer.\n")
                continue
        except Exception as e:
            print("\nInvalid input.Please enter a valid integer.\n")
    return value


def float_validation(str):
    while True:
        try:
            value = float(input(str))
            if value>0: break
            else: 
                print("\nInvalid input.Please enter a valid positive integer.\n")
                continue
        except Exception as e:
            print("\nInvalid input.Please enter a valid integer.\n")
    return value