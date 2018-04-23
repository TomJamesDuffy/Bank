require_relative '../lib/statement.rb'

describe Statement do
  subject(:statement) { Statement }

  let(:dummy_transaction) do
    double :transaction,
           amount: 30,
           created_date: '19/11/1990',
           credit: nil,
           debit: "30.00"
  end

  let(:dummy_bank) do
    double :bank,
           transaction_history: [dummy_transaction, dummy_transaction]
  end

  describe '#print_transactions' do
    it 'prints the date, time and amount of each transaction' do
      expect { statement.print_transactions(dummy_bank.transaction_history) }
        .to output("date || credit || debit || balance\n"\
               "19/11/1990 ||  || 30.00 || 30.00\n"\
               '19/11/1990 ||  || 30.00 || 60.00').to_stdout
    end
  end
end
