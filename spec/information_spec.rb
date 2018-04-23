require_relative '../lib/information.rb'

describe Information do
  subject(:information) { Information }

  let(:dummy_transaction) do
    double :transaction,
           amount: 30,
           created: '19/11/1990'
  end

  let(:dummy_account) do
    double :account,
           history: [dummy_transaction, dummy_transaction]
  end

  describe '#balance' do
    it 'shows current balance' do
      expect(information.balance(dummy_account.history, 0)).to eq(30)
    end
  end
end
