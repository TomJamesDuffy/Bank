require_relative '../lib/bank.rb'

describe Bank do
  subject(:bank) { Bank.new }
  let(:dummy_transaction) { double :transaction }

  describe '#deposit' do
    it 'deposit creates a deposit transaction' do
      bank.deposit(10)
      expect(bank.transaction_history.length).to eq(1)
    end

    it 'throws an error if a number is not entered' do
      expect { bank.deposit('potatoes') }.to raise_error('Number not entered')
    end

    it 'bank balance changes when amount is deposited' do
      bank.deposit(10)
      expect(bank.balance).to eq(10)
    end
  end

  describe '#withdraw' do
    it 'deposit creates records a transaction' do
      bank.deposit(10)
      bank.withdraw(10)
      expect(bank.transaction_history.length).to eq(2)
    end

    it 'bank balance changes when amount is withdrawn' do
      bank.deposit(10)
      bank.withdraw(10)
      expect(bank.balance).to eq(0)
    end

    it 'throws an error if a number is not entered' do
      expect { bank.withdraw('potatoes') }.to raise_error('Number not entered')
    end
  end

  describe '#balance' do
    it 'returns the balance according to the historic transactions' do
      bank.deposit(40)
      bank.withdraw(10)
      expect(bank.balance).to eq(30)
    end
  end
end
