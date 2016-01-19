require "dockingStation"
require "bike"

describe DockingStation do


  it "Docks the bike when the bike is returned" do
    ds = DockingStation.new
    bike = ds.release_bike
    num_of_bikes = ds.bikes.length
    expect(ds.dock_bike(bike)).to eq num_of_bikes + 1
  end

  it "Gets a bike." do
    ds = DockingStation.new
    bike = ds.release_bike
    ds.dock_bike(bike)
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

  it "Does not release a bike if none are available." do
    ds = DockingStation.new
    expect {ds.release_bike}.to raise_error("No bikes are available.")
  end

end
