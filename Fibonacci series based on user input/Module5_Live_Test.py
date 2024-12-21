def FibonacciNumber(n):
    fibo = []
    for i in range(n):
        if i==0: fibo.append(0)
        elif i==1: fibo.append(1)
        else: fibo.append(fibo[i - 1] + fibo[i - 2])
    return fibo

def MaxFibonacciNumber(k):
    from itertools import count
    max_fibo = []
    for i in count():
        if i==0: max_fibo.append(0)
        elif i==1: max_fibo.append(1)
        else:
            number = max_fibo[i - 1] + max_fibo[i - 2]
            if number <= k: max_fibo.append(number)
            else: break
    return max_fibo

def display(list):
    for i in range(len(list)):
        if i==len(list)-1:
            print(list[i])
            print()
        else:
            print(list[i],end=', ')


while True:
    print("1. Generate Fibonacci series by number of terms ")
    print("2. Generate Fibonacci series by maximum value ")
    print("3. Exit ")

    choose = input("Enter your choice: ")

    if choose == '1':
        n = input("Enter the number of terms: ")
        fibolist = FibonacciNumber(int(n))
        if n==0: 
            print(f"Fibonacci series ({n} terms): ")
        else: 
            print(f"Fibonacci series ({n} terms): ",end='')
            display(fibolist)

    elif choose == '2':
        k = input("Enter the maximum value: ")
        max_fibolist = MaxFibonacciNumber(int(k))
        print(f"Fibonacci series (up to {k}): ",end='')
        display(max_fibolist)

    elif choose == '3':
        print("Goodluck!\n")
        break

    else:
        print("\nInvalid Choose. Try Again!\n")