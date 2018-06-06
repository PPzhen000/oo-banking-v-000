class Transfer

  attr_accessor :transfer, :sender, :receiver, :status, :transfer_amount

  def initialize(transfer, sender, receiver, status = "pending", transfer_amount)
    @transfer = transfer
    @sender = sender
    @receiver = receiver
    @status = status
    @transfer_amount = transfer_amount
  end

end
