class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = {}
  end

  def release_bike
    raise "No bikes are available." if empty?
    bikes.each do |k, v|
      if v == false
        bikes.delete(k)
        break
      end
    end
  end

  def dock_bike(bike, faulty = false)
    fail "Dock is full" if full?
    bikes[bike] = faulty
    report_broken(bike, faulty)
  end


  private

  def report_broken(bike, faulty)
    bikes[bike] = faulty
  end

  def full?
    bikes.length >= capacity
  end

  def empty?
    bikes.empty?
  end

end
