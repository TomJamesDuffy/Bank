# Stores details of individual transactions.
class Transaction
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end
end
