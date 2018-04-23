require_relative 'transaction.rb'

# Enables and keeps record of transactions
class Account
  attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  def transact(amount)
    @transaction_history.push(Transaction.new(amount))
  end
end
