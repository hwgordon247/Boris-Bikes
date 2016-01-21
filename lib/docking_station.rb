require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity

# dockingstation assumes to have no bikes
  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = {}
    @capacity = capacity
  end

  def release_bike
    raise "No bikes available!" if empty?
    current_bike = nil
    @bikes.each { |k,working|
      current_bike = k; break if working
    }
    @bikes.delete(current_bike)
    current_bike
  end

  def dock_bike(bike, working = true)
    raise "Station is full!" if full?
    @bikes[bike] = working
    @bikes
  end

  private
    def full?
      @bikes.size >= @capacity
    end

    def empty?
      @bikes.size == 0
    end

end
