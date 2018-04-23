require_relative 'formatter.rb'

# Stores details of individual transactions.
class Transaction
  attr_reader :amount, :created

  def initialize(amount)
    @amount = amount
    @created = Formatter.date(Time.now)
  end
end
