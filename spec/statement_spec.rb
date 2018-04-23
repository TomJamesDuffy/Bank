require_relative '../lib/statement.rb'

describe Statement do
  let(:dummy_transaction) { double :transaction, amount: 30, created_date: '19/11/1990', credit: '0', debit: '30' }
  let(:dummy_bank) { double :bank, transaction_history: [dummy_transaction] }
  subject(:statement) { Statement }

  describe '#print_transactions' do
    it 'prints the date, time and amount of each transaction' do
      expect(statement.print_transactions(dummy_bank.transaction_history)).to eq("date || credit || debit || balance\n19/11/1990 || 0.0 || 30.0 || 30.0")
    end
  end
end
