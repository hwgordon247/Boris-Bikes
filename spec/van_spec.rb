require 'van'

describe Van do

  bike = Bike.new
  bike2 = Bike.new
  ds = DockingStation.new
  ds.dock_bike(bike)
  ds.dock_bike(bike2, false)

  it 'van collect the broken bikes from the docking station' do
    expect(subject.collect_broken(ds)).to include bike2
    expect(subject.collect_broken(ds)).not_to include bike
  end

  it 'after the van collects, ensure only working bikes in docking station' do
    subject.collect_broken(ds)
    expect(ds.bikes).to include bike
    expect(ds.bikes).not_to include bike2
  end

  it 'delivers broken bikes to the garage' do
    garage = Garage.new
    subject.collect_broken(ds)
    expect(subject.delivers_broken(garage)).to be_empty
  end

end
