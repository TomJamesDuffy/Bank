require_relative '../lib/account'

describe Account do
  subject(:account) { Account.new }

  describe '#withdraw' do
    it 'pushes a transaction into the history array' do
      subject.deposit(10)
      expect(subject.history.length).to eq(1)
    end
  end

  describe '#deposit' do
    it 'pushes a transaction into the history array' do
      subject.withdraw(10)
      expect(subject.history.length).to eq(1)
    end
  end
end
