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

    it "Can the Docking station Dock bikes" do
      ds = DockingStation.new
      expect(ds.respond_to?(:dock_bike)).to eq true
    end

    it "Docks the bike when the bike is returned" do
      ds = DockingStation.new
      bike = ds.release_bike
      expect(ds.dock_bike(bike)).to
    end

end
