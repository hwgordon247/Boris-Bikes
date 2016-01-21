require_relative 'docking_station'

class Van
  attr_reader :broken_bikes

  def collect_broken(station)
    @broken_bikes = station.removal
    @broken_bikes
  end

  def delivers_broken(garage)
    garage.take_broken(@broken_bikes)
    @broken_bikes = []
  end

end
