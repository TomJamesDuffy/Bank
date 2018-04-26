describe Information do
  subject(:information) { Information }
  let(:dummy_transaction) { double :transaction, amount: 10 }

  describe '#balance' do
    it 'shows the cumulative balance at a given transaction number' do
      expect(information.balance([dummy_transaction, dummy_transaction], 2)).to eq(20)
    end
  end
end
