class DockingStation
  attr_reader :bikes

  def bikes
    @bikes = []
  end

  def bikes_available?
    @bikes.length > 0
  end

  def release_bike
    if bikes_available?
      Bike.new
    else
      raise "No bikes are available."
    end
  end

  def dock_bike(bike)
    bikes << bike
    @bikes.count
  end

end
