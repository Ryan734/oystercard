class Oystercard
  attr_reader :balance, :in_journey

  MAX_LIMIT = 90
  MINIMUM = 1

  def initialize
    @in_journey = false
    @balance = 0
  end

  def top_up(money)
    max_topup_limit
    @balance += money
  end

  def deduct(money)
    @balance -= money
  end

  def in_journey?
    @in_journey
  end

  def touch_in
    @in_journey = true
    min_topup
  end

  def touch_out
    @in_journey = false
  end


  private

  def max_topup_limit
    raise "Pound #{MAX_LIMIT} limit reached!" if @balance >= MAX_LIMIT
  end

  def min_topup
    raise "Minimum fare #{MINIMUM} required!" if @balance >= MINIMUM
  end

end

# oyster1 = Oystercard.new
# p oyster1.top_up(10)
