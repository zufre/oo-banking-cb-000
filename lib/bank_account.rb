class BankAccount
  attr_reader :name
  def initialize(name)
    @name = name
    @balance = 1000
  end
end
