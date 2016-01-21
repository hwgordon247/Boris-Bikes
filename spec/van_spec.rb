require 'van'

describe Van do

  it 'van collect the broken bikes from the docking station' do
    bike = Bike.new
    bike2 = Bike.new
    ds = DockingStation.new
    ds.dock_bike(bike)
    ds.dock_bike(bike2, false)
    expect(subject.collect_broken(ds)).to include bike2
    expect(subject.collect_broken(ds)).not_to include bike
  end

  it 'after the van collects, ensure only working bikes in docking station' do
    bike = Bike.new
    bike2 = Bike.new
    ds = DockingStation.new
    ds.dock_bike(bike)
    ds.dock_bike(bike2, false)
    subject.collect_broken(ds)
    expect(ds.bikes).to include bike
    expect(ds.bikes).not_to include bike2
  end

end
