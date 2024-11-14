def display(all_food):
    cunt = 1
    for food in all_food:
        print(f"{cunt}. {food}")
        cunt+=1
    print()
  
all_food = []
while True:
    print("Enter 0 for exist!")
    print("Enter 1 for add foods!")
    print("Enter 2 for delete food!")
    print("Enter 3 for view all foods!")

    choice = int(input("Enter your choice : "))

    if choice == 0:
        print("\nThanks for using Food Manager!\n")
        break
    
    elif choice == 1:
        add_food = input("\nEnter your food for add: ")
        all_food.append(add_food)
        print(f"{add_food} is added Successfully!\n")
    
    elif choice == 2:
        delete_food = input("\nEnter food for delete: ")
        if delete_food in all_food:
            all_food.remove(delete_food)
            print(f"{delete_food} is deleted Successfully!\n")
            print(f"\nAfter detele {delete_food}, new food list are: ")
            display(all_food)
        else:
            print(f"{delete_food} isn't found in the food list!\n")
    
    elif choice == 3:
        print("\nAll Food List: ")
        display(all_food)
    
    else:
        print("\nInvalid Input.Try Again!\n")