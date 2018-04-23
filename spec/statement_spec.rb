require_relative '../lib/statement.rb'

describe Statement do
  subject(:statement) { Statement }

  let(:dummy_transaction) do
    double :transaction,
           amount: 30,
           created_date: '19/11/1990',
           credit: '0',
           debit: '30'
  end

  let(:dummy_bank) do
    double :bank,
           transaction_history: [dummy_transaction, dummy_transaction]
  end

  describe '#print_transactions' do
    it 'prints the date, time and amount of each transaction' do
      expect { statement.print_transactions(dummy_bank.transaction_history) }
        .to output("date || credit || debit || balance\n"\
               "19/11/1990 || 0 || 30 || 30\n"\
               '19/11/1990 || 0 || 30 || 60').to_stdout
    end
  end
end
