require 'DockingStation'

describe DockingStation do
  it { should respond_to(:release_bike) }

  it 'expects "release bike" to get a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

end
