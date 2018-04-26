# extracts balance at a given transaction number
module Information
  def self.balance(history, transaction)
    history[0..transaction].reduce(0) { |initial, t| initial + t.amount }
  end
end
