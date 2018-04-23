require_relative '../lib/bank.rb'

describe Bank do
  subject(:bank) { Bank.new }
  let(:dummy_transaction) { double :transaction }

  describe '#deposit' do
    it 'deposit creates a deposit transaction' do
      bank.deposit(10)
      expect(bank.transaction_history.length).to eq(1)
    end
  end

  describe '#withrdraw' do
    it 'deposit creates a withdrawal transaction' do
      bank.withdraw(10)
      expect(bank.transaction_history.length).to eq(1)
    end
  end
end
