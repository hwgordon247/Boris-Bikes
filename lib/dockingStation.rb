class DockingStation
  attr_reader :bikes

  def initialize(bikes = [])
    @bikes = bikes
  end

  def release_bike
    raise "No bikes are available." if bikes.empty?
    Bike.new
  end

  def dock_bike(bike)
    fail "Dock is full" if bikes.length > 19
    bikes << bike
  end

end
