require 'docking_station'

describe DockingStation do

  it {is_expected.to respond_to('release_bike')}

  it do expect(subject.release_bike.working?).to eq true
  end

  it {is_expected.to respond_to('dock_bike')}

end
