<<<<<<< HEAD
require_relative '../lib/dockingStation'

describe DockingStation do
    
=======
require "dockingStation"

describe DockingStation do
    it "Releases a bike" do
      docking_station = DockingStation.new
      expect(docking_station.release_bike).to eq "Bike released."
    end
>>>>>>> 6f6b4d13b6a5ecc3fc2888367c7cd30aa13bc175
end
