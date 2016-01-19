require './lib/bike.rb'

class DockingStation

  attr_reader :bikes


  def release_bike
    Bike.new
  end

  def dock(bike)
  @bikes = bike
  end

end

station = DockingStation.new
bike = station.release_bike
station.dock(bike)

p station.bikes
