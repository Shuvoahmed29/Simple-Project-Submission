print("For Addition Press 1")
print("For Subtraction Press 2")
print("For Multiplication Press 3")
print("For Division Press 4")

choice = int(input("Enter your choice : "))
if choice==1 or choice==2 or choice==3 or choice==4:
    number1 = int(input("Enter First Number : "))
    number2 = int(input("Enter Second Number : "))

if choice==1:
    print("Addition Result is : ",number1+number2)
elif choice==2:
    print("Subtraction Result is : ", number1 - number2)
elif choice==3:
    print("Multiplication Result is : ", number1 * number2)
elif choice==4:
    print("Division Result is : ", number1 / number2)
else:
    print("Invalid Input.Try Again!!")
