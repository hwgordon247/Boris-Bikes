require './lib/bike.rb'

class DockingStation

  attr_reader :bikes_array

  def initialize
    @bikes_array = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes_array.pop
  end

  def dock(bike)
    fail 'Too many bikes' if full?
    @bikes_array << bike
  end

  private
  def full?
    return true if @bikes_array.length > 19
    return false
  end

  def empty?
    return true if @bikes_array.empty?
    return false
  end

end
