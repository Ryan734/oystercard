MAX_LIMIT = 90

class Oystercard
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(money)
    raise "Pound 90 limit reached!" if @balance >= MAX_LIMIT
    @balance += money
  end
end

# oyster1 = Oystercard.new
# p oyster1.top_up(10)
