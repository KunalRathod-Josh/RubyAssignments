#Try out different examples on below topics by their own on ruby console
#Classes
#class methods and instance methods
#Access specifiers
#Getters and setters



class BankAccount

  @@total_accounts = 0

  public

  def initialize(account_number, holder_name)
    @account_number = account_number
    @holder_name = holder_name
    @balance = 0.0
    @@total_accounts += 1

  end

  def account_number
    @account_number
  end

  def holder_name
    @holder_name
  end

  attr_writer :holder_name

  def deposit(amount)

    if amount > 0
      @balance += amount
      puts "after deposit balance #{@balance}"
    end

  end

  def withdraw(amount)

    if @balance > amount
      @balance -= amount
      puts "after withdraw balance #{@balance}"
    end
  
  end

  def check_balance
    puts "current balance #{@balance}"
  end

  def display_info
    puts "account holder name: #{@holder_name}"
    puts "account number: #{@account_number}"
  end

  def self.total_accounts
    puts "total accounts: #{@@total_accounts}"
  end

  def print_transaction_slip
    puts transaction_slip
  end

  private

  def transaction_slip
    "account: #{@account_number}, holder: #{@holder_name}, balance: #{@balance}"
  end

end

obj1 = BankAccount.new(12345, "Kunal")
obj1.deposit(1000)
obj1.deposit(500)
obj1.withdraw(200)
obj1.display_info
obj1.check_balance
obj1.print_transaction_slip

obj2 = BankAccount.new(78345, "Nitesh")

obj3 = BankAccount.new(45738, "Shivani")

BankAccount.total_accounts





  




