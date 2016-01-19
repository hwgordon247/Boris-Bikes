class DockingStation
  attr_reader :bikes

  def bikes
    @bikes = []
  end

  def release_bike
    Bike.new
<<<<<<< HEAD
=======
  end

  def dock_bike(bike)
    bikes << bike
    @bikes.count
>>>>>>> 2be4ea930aea241027ba0b2f62d0a4375b26c325
  end

end
