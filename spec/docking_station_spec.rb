require 'docking_station'

describe DockingStation do

  it {is_expected.to respond_to(:release_bike)}

  it 'gets a bike and expects it to work' do
    expect((subject.release_bike).working?).to be_truthy
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  it {is_expected.to respond_to(:bikes)}

  before do
    bike = subject.release_bike
    subject.dock(bike)
  end

  it 'can see a bike' do
    expect((subject.bikes)).to an_instance_of Bike
  end


end
