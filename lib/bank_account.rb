class BankAccount
  attr_reader :name :status
  def initialize(name)
    @name = name
    @balance = 1000
    @status = 'open'

  end

  def balance
    @balance
  end

end
