class DockingStation
  attr_reader :bikes

  def initialize(bikes = [])
    @bikes = bikes
  end


  def release_bike
    if bikes.empty?
      raise "No bikes are available."
    else
      Bike.new
    end
  end

  def dock_bike(bike)
    bikes << bike
    @bikes.count
  end

end
