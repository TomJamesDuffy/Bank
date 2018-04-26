require_relative 'formatter'
# displays statement
class Display
  HEADER = 'date || credit || debit || balance'.freeze

  def self.statement(account)
    print HEADER
    Formatter.transactions(account.history).each_slice(4) do |t|
      print "\n" + t.join(' || ')
    end
  end
end
