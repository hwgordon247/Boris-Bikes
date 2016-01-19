require './lib/bike.rb'

class DockingStation
  def release_bike
    Bike.new
  end
end

station = DockingStation.new
bike = station.release_bike
p bike.working?
