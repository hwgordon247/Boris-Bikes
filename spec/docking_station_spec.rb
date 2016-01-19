require "dockingStation"

describe DockingStation do
    it "Releases a bike" do
      docking_station = DockingStation.new
      expect(docking_station.release_bike).to eq "Bike released."
    end
end
