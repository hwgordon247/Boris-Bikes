require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes

# dockingstation assumes to have no bikes
  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available!" if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "Station is full!" if full?
    @bikes << bike
  end

  private
    def full?
      @bikes.size >= DEFAULT_CAPACITY
    end

    def empty?
      @bikes.size == 0
    end

end
