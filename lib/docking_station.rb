require_relative 'bike'

class DockingStation
  attr_reader :bikes

# dockingstation assumes to have no bikes
  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available!" if @bikes.size == 0
    @bikes.pop
  end

  def dock_bike(bike)
    raise "Station is full!" if @bikes.size >= 20
    @bikes << bike
  end

end
