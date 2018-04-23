require_relative 'transaction.rb'

# Bank enables withdrawal, deposits and balance checking.
class Bank
  attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  def deposit(amount)
    @transaction_history.push(Transaction.new(amount))
  end

  def withdraw(amount)
    @transaction_history.push(Transaction.new(-amount))
  end
end
