# Stores details of individual transactions.
class Transaction
  attr_reader :debit, :created_date, :credit, :amount

  def initialize(amount, created_date = Time.now)
    @amount = amount
    @created_date = created_date
    @debit = 0
    @credit = 0
    assign
  end

  private

  def assign
    @amount > 0 ? (@debit = @amount) : (@credit = -@amount)
  end
end
