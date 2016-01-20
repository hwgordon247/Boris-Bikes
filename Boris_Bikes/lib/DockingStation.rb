require_relative 'Bike'

class DockingStation

  attr_reader :bike

  def release_bike
    if @bike
      @bike
    else
      raise Exception.new("No Bikes Available")
    end
  end

  def dock(bike)
    if @bike.nil?
      @bike = bike
    else
      raise Exception.new("Docking Station Full")
    end
  end

  def bike
    @bike
  end

end
