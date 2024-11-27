class BankManagement:
    def __init__(self,name,amount):
        self.__accountName = name
        self.__currentBalane = amount
    
    @property
    def CurrentBalance(self):
        return self.__currentBalane
    
    @property
    def AccountName(self):
        return self.__accountName
    
    def Deposit(self,amount):
        if amount>0:
            self.__currentBalane += amount
            print(f"\n{amount} taka Deposit Successful!\n")
        else: print("\nInvalid Deposit\n")
    
    def Withdraw(self,amount):
        if amount<self.__currentBalane:
            self.__currentBalane -= amount
            print(f"\n{amount} taka Withdraw Successful\n")
        else: print("\nInsufficient Balance\n")
    
customer = BankManagement("Shuvo Ahmed",10200)

print(f"Account Name: {customer.AccountName}")
print(f"Initial Balance is : {customer.CurrentBalance}")

customer.Deposit(300)
print(f"After Deposit Current Balance is : {customer.CurrentBalance}")

customer.Withdraw(140.65)
print(f"After Withdraw Current Balance is : {customer.CurrentBalance}")