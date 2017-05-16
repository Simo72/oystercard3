class Station

  attr_reader :name

  def initialize(name, zone = 1)
    @zone = zone
    @name = name
  end

  def check_zone
    @zone
  end


end
