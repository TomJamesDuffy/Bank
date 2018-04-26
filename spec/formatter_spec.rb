describe Formatter do
  subject(:formatter) { Formatter }
  let(:dummy_transaction) do
    double :transaction,
           amount: 10,
           created: Time.new(2008, 10, 10)
  end

  describe '#transactions' do
    it 'reformats transactions into appropriate output' do
      expect(formatter.transactions([dummy_transaction, dummy_transaction]))
        .to eq(['2008-10-10', nil, '10.00', '10.00', '2008-10-10', nil, '10.00', '20.00'])
    end
  end
end
