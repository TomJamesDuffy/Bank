require_relative 'information'
# formats history
module Formatter
  def self.transactions(history)
    history.each_with_index.map do |t, i|
      [date(t.created), assign(t.amount), string2f(Information.balance(history, i))]
    end.flatten
  end

  def self.assign(amount)
    amount <= 0 ? [string2f(-amount), nil] : [nil, string2f(amount)]
  end

  def self.date(date_time)
    date_time.to_s[0...10]
  end

  def self.string2f(number)
    format('%.2f', number)
  end
end
