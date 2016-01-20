require 'DockingStation'

describe DockingStation do
	let(:DockingStation) {described_class.new}

	it {should respond_to(:release_bike)}

	it "Releases a working bike" do
	bike = subject.release_bike
	expect(bike).to be_working
	end

	context "responds to 'dock' with one argument" 
	it {is_expected.to respond_to(:dock).with(1).argument}

end
