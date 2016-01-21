require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  it 'check if bike is working' do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

  it 'dock bike' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to include bike
  end

  it 'check the same bike exists' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bikes).to include bike
  end

  it 'release a bike when it is available' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'raise an error when no bikes are available' do
    expect { subject.release_bike }.to raise_error("No bikes available!")
  end

  it 'raise an error when station is full' do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(Bike.new) }
    expect { subject.dock_bike(Bike.new) }.to raise_error("Station is full!")
  end

  it 'specify a large capacity when necessary' do
    station = DockingStation.new(30)
    30.times { station.dock_bike(Bike.new)}
    expect { station.dock_bike(Bike.new) }.to raise_error("Station is full!")
  end

  it 'checks the default capacity is 20' do
    expect(subject.capacity).to eq 20
  end

  it 'checks the desired capacity of 30' do
    expect(DockingStation.new(30).capacity).to eq 30
  end

end
