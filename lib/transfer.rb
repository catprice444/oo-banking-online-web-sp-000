class Transfer
  attr_accessor :sender, :receiver, :status, :transfer, :amount

  def initialize(sender, receiver, transfer)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @transer = amount
  end

  def valid?
  end

  def execute_transaction
  end

  def reverse_transfer
  end

end
