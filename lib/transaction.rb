# Stores details of individual transactions.
class Transaction
  attr_reader :debit, :created_date, :credit, :amount

  def initialize(amount, created_date = Time.now.to_s[0...10])
    @amount = amount
    @created_date = created_date
    @debit = nil
    @credit = nil
    assign
  end

  private
  def assign
    @amount < 0 ? (@credit = ('%.2f' % @amount)) : (@debit = ('%.2f' % @amount))
  end
end
