require_relative 'journey'

class OysterCard
  attr_reader :balance, :entry_station
  BALANCE_DEFAULT = 5
  BALANCE_MAX = 90
  BALANCE_MIN = 1

  def initialize(balance = BALANCE_DEFAULT)
    @balance = balance
    @entry_station = nil
    @list_journeys = []
  end

  def top_up(value)
    raise "You've exceeded the maximum top up of #{BALANCE_MAX}" if @balance + value >= BALANCE_MAX
    @balance += value
  end

  def deduct(value)
    raise "You don't have enough money to travel." if @balance - value <= 0
    @balance -= value
  end

  def touch_in(station)
    raise "You have less than minimum £#{BALANCE_MIN} balance" if @balance < BALANCE_MIN
    @entry_station = station
  end

  def touch_out(station)
    @balance -= BALANCE_MIN
    @list_journeys << {journey_start: @entry_station, journey_end: station}
    @entry_station = nil
  end

  # def in_journey?
  #   @entry_station != nil
  # end

  def list_journeys
    @list_journeys
  end

end
