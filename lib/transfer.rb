class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, status = "pending", transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = transfer_amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if !valid?
      self.status = "rejected"
      return "Transaction rejected. Please check your account balance."
    else
      @receiver.balance = @sender.balance + @amount
      @sender.balance -= @amount
      # @receiver.balance += @amount
      self.status = "complete"
    end
  end

  def reverse_transfer
    @sender.balance += @amount
    @receiver.balance -= @amount
    self.status = "reversed"
  end

end
