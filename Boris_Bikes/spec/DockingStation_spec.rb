require 'DockingStation'

describe DockingStation do
  it { should respond_to(:release_bike) }

  it 'expects "release_bike" to get a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  context 'responds to "dock" with one argument'
    it { is_expected.to respond_to(:dock).with(1).argument}

  context 'responds to "bike"'
    it { is_expected.to respond_to(:bike)}

end
