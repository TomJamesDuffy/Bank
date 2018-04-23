# Prints all transactions in transaction history
class Statement
  def self.print_transactions(transaction_history)
    transaction_history.each_with_index do |t, i|
      return "date || credit || debit || balance\n" + t.created_date + ' || ' + t.credit.to_f.to_s + ' || ' + t.debit.to_f.to_s + ' || ' + (transaction_history[0..i].reduce(0) { |initial, t| initial + t.amount }).to_f.to_s
    end
  end
end
