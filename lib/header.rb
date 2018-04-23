# Provides header based on code
class Header
  def self.provide(code)
    'date || credit || debit || balance' if code == 'T'
  end
end
