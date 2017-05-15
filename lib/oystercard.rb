class OysterCard
  attr_reader :balance
  BALANCE_DEFAULT = 5
  BALANCE_MAX = 90

  def initialize(balance = BALANCE_DEFAULT)
    @balance = balance
    @touch_in = false
    @touch_out = false
  end

  def top_up(value)
    raise "You've exceeded the maximum top up of #{BALANCE_MAX}" if @balance + value >= BALANCE_MAX
    @balance += value
  end

  def deduct(value)
    raise "You don't have enough money to travel." if @balance - value <= 0
    @balance -= value
  end

  def touch_in
    @touch_in = true
  end

  def touch_out
    @touch_out = true
  end

  def in_journey?
    @touch_in  && !@touch_out 
  end

end
