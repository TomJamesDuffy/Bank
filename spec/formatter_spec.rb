require_relative '../lib/formatter.rb'

describe Formatter do
  subject(:formatter) { Formatter }

  describe '#date' do
    it 'shows only the date' do
      expect(Formatter.date(Date.new(2001, 2, 3))).to eq('2001-02-03')
    end
  end

  describe '#decimal' do
    it 'converts a number to a float with two decimal places and then to a string' do
      expect(Formatter.decimal(10)).to eq('10.00')
    end
  end
end
