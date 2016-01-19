require 'DockingStation'

describe DockingStation do
	let(:DockingStation) {described_class.new}

	it {should respond_to(:release_bike)}

	it "Returns a bike when release_bike is called on DockingStation" do
	bike = subject.release_bike
	expect(bike).to be_working
	end
end
