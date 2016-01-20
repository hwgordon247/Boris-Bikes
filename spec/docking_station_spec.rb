require "dockingStation"
require "bike"

describe DockingStation do

  it "Gets a bike." do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(bike).to be_instance_of Bike
  end

  it "Expects the bike to be working." do
    bike = Bike.new
    expect(bike.working?).to be_truthy
  end

  it "Does it respond to dock bike?" do
    expect(subject).to respond_to :dock_bike
  end

  it "expect dock bikes to accept an argument" do
      expect(subject).to respond_to(:dock_bike).with(1).argument
  end

  it "Does not release a bike if none are available." do
    subject.bikes.pop
    expect {subject.release_bike}.to raise_error("No bikes are available.")
  end

  it "You can't dock a bike if there's 20 bikes in the station" do
    20.times { subject.dock_bike Bike.new }
    bike = Bike.new
    expect {subject.dock_bike(bike)}.to raise_error "Dock is full"
  end

end
