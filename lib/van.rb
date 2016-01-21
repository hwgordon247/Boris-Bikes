require_relative 'docking_station'

class Van
  attr_reader :broken_bikes , :fixed_bikes

  def collect_broken(station)
    @broken_bikes = station.removal
    @broken_bikes
  end

  def delivers_broken(garage)
    garage.take_broken(@broken_bikes)
    @broken_bikes = []
  end

  def collect_fixed(garage)
    @fixed_bikes = garage.return_fixed
    @fixed_bikes
  end

end
