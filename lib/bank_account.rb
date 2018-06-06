class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
  end

  def deposit(some_amount_of_money)
    @balance += some_amount_of_money
  end

  def display_balance
    return "Your balance is $#{@balance}."
  end

  def valid?

  end

  def close_account

  end
end
