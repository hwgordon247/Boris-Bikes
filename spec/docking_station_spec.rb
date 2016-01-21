require 'docking_station'

describe DockingStation do
  let(:bike) { double :bike }

  it { is_expected.to respond_to(:release_bike) }

  it 'check if released bike is working' do
    subject.dock_bike(bike)
    allow(bike).to receive(:working?).and_return(true)
    expect(subject.release_bike).to be_working
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

  it 'dock bike' do
    expect(subject.dock_bike(bike)).to include bike
  end

  it 'check the same bike exists' do
    subject.dock_bike(bike)
    expect(subject.bikes).to include bike
  end

  it 'release a bike when it is available' do
    subject.dock_bike(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'raise an error when no bikes are available' do
    expect { subject.release_bike }.to raise_error("No bikes available!")
  end

  it 'raise an error when station is full' do
    i = 0
    DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(i+=1) }
    expect { subject.dock_bike(bike) }.to raise_error("Station is full!")
  end

  it 'specify a large capacity when necessary' do
    i = 0
    station = DockingStation.new(30)
    30.times { station.dock_bike(i+=1)}
    expect { station.dock_bike(bike) }.to raise_error("Station is full!")
  end

  it 'checks the default capacity is 20' do
    expect(subject.capacity).to eq 20
  end

  it 'checks the desired capacity of 30' do
    expect(DockingStation.new(30).capacity).to eq 30
  end

  it 'a user can report a broken bike when it is docked' do
    allow(bike).to receive(:report_broken).and_return(false)
    expect(subject.dock_bike(bike, false)).to include bike
  end

  it 'docking station only releases working bikes' do
    allow(bike).to receive(:report_broken).and_return(false)
    bike2 = double(:bike2)
    bike3 = double(:bike3)
    allow(bike3).to receive(:report_broken).and_return(false)
    subject.dock_bike(bike, false)
    subject.dock_bike(bike2)
    subject.dock_bike(bike3, false)
    expect(subject.release_bike).to eq bike2
  end

end
