require_relative 'docking_station'

class Garage
  attr_reader :broken_bikes

  def take_broken(broken_bikes)
    @broken_bikes = broken_bikes
  end

end
