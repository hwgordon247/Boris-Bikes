require_relative '../lib/bike'

describe Bike do
	it "is it working?" do
		bike = Bike.new
		expect(bike.respond_to?(:working?)).to eq true
	end
end
