class Journey
MINIMUM_FARE = 1
PENALTY_FARE = 6
  attr_reader :entry_station, :exit_station

  def initialize(entry_station = nil)
    @entry_station = entry_station

  end

  def complete_journey(exit_station)
    @exit_station = exit_station
  end

  def fare
    return PENALTY_FARE if penalty?
    MINIMUM_FARE
  end

  private
  
  def penalty?
    !@entry_station || !@exit_station
  end

end
