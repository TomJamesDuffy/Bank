require_relative 'transaction.rb'

# Bank enables withdrawal, deposits and balance checking.
class Bank
  attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  def deposit(amount)
    raise 'Number not entered' unless amount.is_a?(Numeric)
    raise 'You cannot deposit a negative amount' if amount < 0
    @transaction_history.push(Transaction.new(amount))
  end

  def withdraw(amount)
    raise 'Number not entered' unless amount.is_a?(Numeric)
    raise 'You have no funds' if nil_balance?
    raise 'You cannot withdraw a negative amount' if amount < 0
    @transaction_history.push(Transaction.new(-amount))
  end

  def balance
    @transaction_history.reduce(0) { |initial, t| initial + t.amount }
  end

  private

  def nil_balance?
    balance.zero?
  end
end
