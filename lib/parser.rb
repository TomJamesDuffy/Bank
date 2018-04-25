require_relative 'formatter.rb'

# Parses transactions into form that can be interpreted by the print class i.e a flattened array
class Parser
  def self.transactions(history)
    history.each_with_index.map do |t, i|
      [t.created, identify(t.amount), Formatter.decimal(Information.balance(history, i))]
    end.flatten
  end

  def self.identify(amount)
    amount <= 0 ? [Formatter.decimal(-amount), nil] : [nil, Formatter.decimal(amount)]
  end
end
