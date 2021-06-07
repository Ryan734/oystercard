class Oystercard
  attr_reader :balance

  MAX_LIMIT = 90

  def initialize
    @balance = 0
  end

  def top_up(money)
    max_topup_limit
    @balance += money
  end

  def deduct(money)
    @balance -= money
  end

  private

  def max_topup_limit
    raise "Pound #{MAX_LIMIT} limit reached!" if @balance >= MAX_LIMIT
  end
end

# oyster1 = Oystercard.new
# p oyster1.top_up(10)
