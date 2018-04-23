# Given transaction history and number returns balance at that point in time
class Information
  def self.balance(history, transaction)
    history[0..transaction].reduce(0) { |initial, t| initial + t.amount }
  end
end
