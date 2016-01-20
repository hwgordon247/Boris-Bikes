require 'DockingStation'

describe DockingStation do
  subject(:DockingStation) {described_class.new}

  it { should respond_to(:release_bike) }

  describe '#release_bike' do
    it 'expects "release_bike" to get a working bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises error "No Bikes Available" when docking station is empty' do
      expect {subject.release_bike == nil }.to raise_error("No Bikes Available")
    end
  end

  context 'responds to "dock" with one argument'
    it { is_expected.to respond_to(:dock).with(1).argument}

  context 'responds to "bike"'
    it { is_expected.to respond_to(:bike)}

end
