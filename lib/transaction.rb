require_relative 'formatter'
# records transactions
class Transaction
  attr_reader :created, :amount

  def initialize(amount, created = Formatter.date(Time.now))
    @amount = amount
    @created = created
  end
end
