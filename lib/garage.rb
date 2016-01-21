require_relative 'docking_station'

class Garage
  attr_reader :broken_bikes

  def take_broken(broken_bikes)
    @broken_bikes = broken_bikes
  end

  def return_fixed
    fixed_bikes = @broken_bikes
    @broken_bikes = []
    fixed_bikes
  end

end
