class Journey

def initialize(complete = false, min_fare = 1)
  @complete = complete
  @min_fare = min_fare
  @entry_station = nil
  @exit_station = nil
end

  def in_journey?
    @entry_station != nil
  end

  def fare
    @min_fare
  end

  # def list_journeys
  #   @list_journeys
  # end

end
