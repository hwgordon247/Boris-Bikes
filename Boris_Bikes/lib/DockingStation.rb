require_relative 'Bike'

class DockingStation

attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise Exception.new("No Bikes Available")
    else
      @bikes.pop
    end
  end

  def dock(potato)
    if @bikes.size >= 20
      raise Exception.new("Docking Station Full")
    else
      @bikes << potato
    end
  end

end
