require "dockingStation"

describe DockingStation do
    it "Releases a bike" do
      expect(DockingStation.release_bike).to eq "Bike released."
    end
end
