
# Bank Account Management System

This project implements a simple bank account management system in Ruby. It supports two types of accounts: `Account` and `SavingAccount`. Users can perform basic operations such as checking the balance, depositing money, and withdrawing money.

## Features

- **Account Class:**
  - Initialize with name and balance.
  - Check balance with a PIN.
  - Deposit money with a PIN.
  - Withdraw money with a PIN.
  
- **SavingAccount Class:**
  - Inherits from `Account`.
  - Requires two PINs for withdrawal for added security.
  - Allows deposit with either of the two PINs.

## Usage

### Account Class

Create an instance of the `Account` class and perform operations:

```ruby
# Opening an Account
checking_account = Account.new('Checcio', 10_000_000)

# Display balance
checking_account.display_balance(1234)

# Withdraw money
checking_account.withdraw(1234, 260_000)

# Deposit money
checking_account.deposit(1234, 300_000)

# Attempt to withdraw more than the balance
checking_account.withdraw(1234, 50_000_000)
```

### SavingAccount Class

Create an instance of the `SavingAccount` class and perform operations:

```ruby
# Opening a Saving Account
saving_account = SavingAccount.new('Savio')

# Withdraw money with two PINs
saving_account.withdraw(1234, 5678, 1000)

# Deposit money with either PIN
saving_account.deposit(5678, 2000)
```

## Classes and Methods

### Account

- `initialize(name, balance = 100)`
  - Initializes the account with a name and a balance (default is 100).

- `display_balance(pin_number)`
  - Displays the balance if the correct PIN is provided.

- `deposit(pin_number, amount)`
  - Deposits the specified amount if the correct PIN is provided.

- `withdraw(pin_number, amount)`
  - Withdraws the specified amount if the correct PIN is provided and if sufficient funds are available.

### SavingAccount

- `initialize(name, balance = 1000)`
  - Initializes the savings account with a name and a balance (default is 1000).

- `deposit(pin_number, amount)`
  - Deposits the specified amount if either of the two PINs is provided.

- `withdraw(pin_number1, pin_number2, amount)`
  - Withdraws the specified amount if both PINs are provided and if sufficient funds are available.

## Error Messages

- **PIN Error:** "Access denied: incorrect PIN."
- **Amount Error:** "Insufficient funds! Your balance is: $#{@balance}"

## License

This project is licensed under the MIT License.
