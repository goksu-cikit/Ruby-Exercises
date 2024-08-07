class Account
    def initialize(name , balance=100)
      @name = name
      @balance = balance
    end
  
    #Checking the Balance
    def display_balance (pin_number)
      puts pin_number == pin ? "Balance $ #{@balance}" : pin_error
    end
  
    #Deposit Money
    def deposit(pin_number, amount)
      if pin_number == pin
        @balance += amount
        puts "You've deposited your acc $#{amount}. New Balance: $#{@balance}" 
      else 
        pin_error
      end 
    end
  
    #Making a Withdrawal
    def withdraw (pin_number, amount)
      if pin_number == pin 
        if amount > @balance
          puts amount_error
        else
          @balance -= amount
          puts "Withdrew #{amount}. New balance: $#{@balance}"
        end
      else
        puts pin_error
      end
    end
  
    private
    ##
    def pin
     1234
    end
  
    ##
    def pin_error
      return "Access denied: incorrect PIN."
    end
  
    def amount_error
      return "Insufficent funds! Your balance is: $#{@balance}"
    end
  end
  
  #Opening an Account
  checking_account = Account.new('Checcio', 10_000_000)
  checking_account.display_balance(1234)
  checking_account.withdraw(1234, 260_000)
  checking_account.deposit(1234, 300_000)
  checking_account.withdraw(1234, 50_000_000)
  
  # Saving Account Instance
  class SavingAccount < Account 
    def initialize (name, balance = 1000)
      super
    end
  
    #Deposit Money
    def deposit(pin_number, amount)
      if pin_number == pin1 || pin_number == pin2
        @balance += amount
        puts "You've deposited $#{amount}. New Balance: $#{@balance}" 
      else 
        pin_error
      end 
    end
  
    #Withdraw Money
    def withdraw (pin_number1, pin_number2, amount)
      if pin_number1 == pin1 && pin_number2 == pin2
        if amount > @balance
          puts amount_error
        else
          @balance -= amount
          puts "Withdrew #{amount}. New balance: $#{@balance}"
        end
      else
        puts pin_error
      end
    end
    
    private
    def pin1
      1234
    end
  
    def pin2
      5678
    end
  end
  
  saving_account = SavingAccount.new('Savio')
  saving_account.withdraw(1234, , 1000)
  saving_account.deposit(5678, 2000)