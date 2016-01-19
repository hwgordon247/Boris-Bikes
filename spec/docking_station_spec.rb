require 'docking_station'

describe DockingStation do

  it {is_expected.to respond_to(:release_bike)}


  it 'gets a bike and expects it to work' do
    expect((subject.release_bike).working?).to be_truthy
  end


end
