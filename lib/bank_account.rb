class BankAccount

  attr_accessor :balance, :status, :name
  # attr_reader :name

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
  end
end
