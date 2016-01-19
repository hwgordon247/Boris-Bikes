class DockingStation
  attr_reader :bikes

  def bikes
    @bikes = []
  end

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    bikes << bike
    @bikes.count
  end

end
