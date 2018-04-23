# Formats
class Formatter
  def self.date(date_time)
    date_time.to_s[0...10]
  end

  def self.decimal(number)
    format('%.2f', number)
  end
end
