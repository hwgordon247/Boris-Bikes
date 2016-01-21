require 'van'

describe Van do
  before(:example) do
    @bike = Bike.new
    @bike2 = Bike.new
    @ds = DockingStation.new
    @ds.dock_bike(@bike)
    @ds.dock_bike(@bike2, false)
  end

  it 'van collect the broken bikes from the docking station' do
    expect(subject.collect_broken(@ds)).to include @bike2
    expect(subject.collect_broken(@ds)).not_to include @bike
  end

  it 'after the van collects, ensure only working bikes in docking station' do
    subject.collect_broken(@ds)
    expect(@ds.bikes).to include @bike
    expect(@ds.bikes).not_to include @bike2
  end

  it 'delivers broken bikes to the garage' do
    garage = Garage.new
    subject.collect_broken(@ds)
    expect(subject.delivers_broken(garage)).to be_empty
  end

  it 'collects fixed bikes from the garage' do
    garage = Garage.new
    bikes_to_fix = subject.collect_broken(@ds)
    subject.delivers_broken(garage)
    expect(subject.collect_fixed(garage)).to eq bikes_to_fix
  end

  it 'fixed bike is docked to the station again' do
    garage = Garage.new
    subject.collect_broken(@ds)
    subject.delivers_broken(garage)
    subject.collect_fixed(garage)
    subject.delivers_fixed(@ds)
    expect(@ds.bikes).to include @bike
    expect(@ds.bikes).to include @bike2
  end

  it 'is empty after delivering fixed bikes to docking station' do
    garage = Garage.new
    subject.collect_broken(@ds)
    subject.delivers_broken(garage)
    subject.collect_fixed(garage)
    subject.delivers_fixed(@ds)
    expect(subject.fixed_bikes).to be_empty
  end
end
