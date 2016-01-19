class DockingStation

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    bike
  end

  def bike

  end

end

class Bike

  def working?
    true
  end

end
