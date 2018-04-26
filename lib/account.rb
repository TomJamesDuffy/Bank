require_relative 'transaction'
# records and performs transactions
class Account
  attr_reader :history

  def initialize(transaction = Transaction)
    @transaction = transaction
    @history = []
  end

  def withdraw(amount)
    @history.push(@transaction.new(-amount))
  end

  def deposit(amount)
    @history.push(@transaction.new(amount))
  end
end
