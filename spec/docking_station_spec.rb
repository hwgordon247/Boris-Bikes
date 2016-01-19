require 'docking_station'

describe DockingStation do

  describe '#release_bike' do

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike}. to raise_error 'No bikes available'
    end

  end



  it 'gets a bike and expects it to work' do
    bike = Bike.new
    subject.dock(bike)
    expect((subject.release_bike).working?).to be_truthy
  end

  describe '#dock' do

    it 'docks a bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq(bike)
    end

    it 'raises an error when there are too many bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect {subject.dock(bike)}. to raise_error 'Too many bikes'
    end
  end

  it {is_expected.to respond_to(:bikes)}


  it 'can see a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect((subject.bikes)).to an_instance_of Bike
  end


end
