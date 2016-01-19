require 'docking_station'


describe DockingStation do

  it {is_expected.to respond_to('release_bike')}

  it "when method release_bike is called, we want total bikes to reduce by 1" do
    expect(subject.release_bike).to eq(totalbikes-1)
    end
end
