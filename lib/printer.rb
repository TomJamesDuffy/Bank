require_relative 'parser.rb'
require_relative 'header.rb'

# Prints all transactions in transaction history
class Printer
  def self.transaction_print(parsed_transactions, code = 'T')
    print Header.provide(code)
    parsed_transactions.each_slice(4) { |t| print "\n" + t.join(' || ') }
  end
end
