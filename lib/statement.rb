# Prints all transactions in transaction history
class Statement
  def self.print_transactions(transaction_history)
    print 'date || credit || debit || balance'
    transaction_history.each_with_index do |t, i|
      print "\n#{t.created_date} || #{t.credit} "\
                "|| #{t.debit} || #{balance(transaction_history, i)}"
    end
  end

  def self.balance(transaction_history, pos)
    '%.2f' % transaction_history[0..pos].reduce(0) { |initial, t| initial + t.amount }
  end
end
