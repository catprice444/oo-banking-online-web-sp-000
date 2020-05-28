class Transfer
  attr_accessor :sender, :receiver, :status, :transfer

  def initialize(sender, receiver, transfer=nil)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    # @transer = transfer
  end

  def valid?
  end

  def execute_transaction
  end

  def reverse_transfer
  end

end
