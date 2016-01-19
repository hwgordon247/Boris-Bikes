require "dockingStation"
require "bike"

describe DockingStation do
    it "Gets a bike." do
      ds = DockingStation.new
      bike = ds.release_bike
      expect(bike).to be_instance_of Bike
    end

    it "Expects the bike to be working." do
      ds = DockingStation.new
      bike = ds.release_bike
      expect(bike.working?).to be_truthy
    end
end
