require_relative '../lib/header.rb'

describe Header do
  subject(:header) { Header }

  describe '#provide' do
    it 'identifies and provides appropriate header' do
      expect(header.provide('T')).to eq('date || credit || debit || balance')
    end
  end
end
