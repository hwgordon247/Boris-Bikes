require 'bike'

describe Bike do

  it {is_expected.to respond_to('working?')}

# is expecting subject.working? to retrun true
  #it do
    #expect (subject.working?).to eq('true')
  #end
end
