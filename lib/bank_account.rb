class BankAccount
  attr_accessor
  attr_reader :name
  def initialize(name)
    @name = name
    @balance = 1000
    @status = 'open'
  end

  def balance
    @balance
  end

  def status
    @status
  end

  def deposit(amount)
    @balance += amount
  end

  def display_balance
    @balance
  end
end
