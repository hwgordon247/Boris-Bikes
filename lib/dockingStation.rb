class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise "No bikes are available." if empty?
    Bike.new
  end

  def dock_bike(bike)
    fail "Dock is full" if full?
    bikes << bike
  end

  private
  def full?
    bikes.length >= capacity
  end

  def empty?
    bikes.empty?
  end

end
