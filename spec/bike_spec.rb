require 'bike'

describe Bike do


  it ' instance responds to the working? method' do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

end
