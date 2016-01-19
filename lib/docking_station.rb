require './lib/bike.rb'

class DockingStation

  attr_reader :bikes

  def release_bike
    fail 'No bikes available' unless @bikes
    @bikes
  end

  def dock(bike)
  @bikes = bike
  end

end
