class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid? == true
  end

  def execute_transaction
    if sender.balance > @amount && @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
    else
      sender.balance < @amount && @status == "pending"
      "Transaction rejected. Please check your account balance."
    end
    @status = "complete"
  end

  def reverse_transfer

  end

end
