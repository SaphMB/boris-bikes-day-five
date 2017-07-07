require 'docking_station'

describe DockingStation do
  it 'docking station responds to release bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'docking station gets a bike' do
    expect(subject.release_bike).to be_a(Bike)
  end

  it 'allows a user to dock a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'allows user to see if bike is docked' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to be_a(Bike)
  end

end
