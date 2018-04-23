# Prints all transactions in transaction history
class Statement
  def self.print_transactions(transaction_history)
    string = 'date || credit || debit || balance'
    transaction_history.each_with_index do |t, i|
      string += "\n#{t.created_date} || #{t.credit} "\
                "|| #{t.debit} || #{balance(transaction_history, i)}"
    end
    return string
  end

  def self.balance(transaction_history, pos)
    transaction_history[0..pos].reduce(0) do |initial, t|
      initial + t.amount
    end.to_s
  end
end
