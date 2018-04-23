require_relative '../lib/printer.rb'

describe Printer do
  subject(:printer) { Printer }

  describe '#print' do
    it 'prints the date, time and amount of each transaction' do
      expect do
        printer.transaction_print(
          ['19/11/1990', nil, '30.00', '30.00', '19/11/1990', nil, '30.00', '60.00']
        )
      end.to output("date || credit || debit || balance\n"\
                  "19/11/1990 ||  || 30.00 || 30.00\n"\
                  '19/11/1990 ||  || 30.00 || 60.00').to_stdout
    end
  end
end
