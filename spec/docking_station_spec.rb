require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  it { expect(subject.release_bike.working?).to eq true }

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'dock bike' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it 'check the same bike exists' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end

end
