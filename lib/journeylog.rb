class JourneyLog

  attr_reader :journey_class

  def initialize(journey_class)
    @journey_class = journey_class
    @current_journey = nil
  end

  def start(entry_station)
    @current_journey = Journey.new(entry_station)
    entry_station
  end

end
