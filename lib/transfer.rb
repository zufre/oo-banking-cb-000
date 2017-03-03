class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  def valid?
    sender = BankAccount.new(@sender)
    receiver = BankAccount.new(@receiver)
    if sender.valid? && receiver.valid?
      true
    else
      false
    end
    @sender.valid?
    @receiver.valid?
  end

  def execute_transaction
    if @status == "pending"
      if @sender.balance > @amount && @sender.status == "open"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"

      else
        @status = "rejected"
        "Transaction rejected. Please check your account balance."
      end
    end
  end
  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "reversed"
    end
  end


end
