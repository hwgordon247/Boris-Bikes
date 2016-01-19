require './lib/bike.rb'

class DockingStation

  attr_reader :bikes_array

  def initialize
    @bikes_array = []
  end

  def release_bike
    fail 'No bikes available' unless @bikes_array.length > 0
    @bikes_array.pop
  end

  def dock(bike)
    fail 'Too many bikes' if @bikes_array.length > 19
    @bikes_array << bike
  end

end
