require 'bike'

describe Bike do
  it 'bike respond to working?' do
  expect(subject).to respond_to(:working?)
end

  it 'expects bike to be working' do
    expect(subject.working?).to eq true
  end

end
