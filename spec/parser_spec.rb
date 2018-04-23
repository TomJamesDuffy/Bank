require_relative '../lib/parser.rb'

describe Parser do
  subject(:parser) { Parser }

  let(:dummy_transaction) do
    double :transaction,
           amount: 30,
           created: '19/11/1990'
  end

  let(:dummy_account) do
    double :account,
           history: [dummy_transaction, dummy_transaction]
  end

  describe 'parse_transactions' do
    it 'prepares transactions to be printed' do
      expect(parser.transactions(dummy_account.history))
        .to eq(['19/11/1990', nil, '30.00', '30.00', '19/11/1990', nil, '30.00', '60.00'])
    end
  end
end
