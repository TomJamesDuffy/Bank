require_relative '../lib/account.rb'

describe Account do
  subject(:account) { Account.new }
  let(:dummy_transaction) { double :transaction }

  describe '#transact' do
    it 'creates a transaction' do
      account.transact(10)
      expect(account.transaction_history.length).to eq(1)
    end
  end
end
