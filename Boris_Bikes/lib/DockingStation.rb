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
    @bike = bike
  end

  def bike
    @bike
  end

end
