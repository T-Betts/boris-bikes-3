require 'bike'

describe DockingStation do
  # it 'responds to release_bike' do
  #  expect(subject).to respond_to :release_bike
  # end
  it { is_expected.to respond_to :release_bike }

  # station = DockingStation.new
  # it 'gets a bike and expects bike to be working' do
  #   expect((station.release_bike).nil?).to eq false
  #   expect((Bike.new).working?).to eq true
  # end

  it 'gets a bike and expects bike to be working' do
    bike = Bike.new
    expect(bike).to be_instance_of Bike
    expect(bike.working?).to eq true
  end

  it 'adds bike to DockingStation' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.docked_bikes.include?(bike)).to eq true
  end

  it 'raises error if docking station is empty otherwise releases bike' do
    expect(subject.release_bike).to eq "Remaining bike count: 19"
    expect { 21.times {subject.release_bike} }.to raise_error('Docking station empty')
  end

  it 'raises error when full' do
    expect { 101.times { subject.dock(Bike.new) } }.to raise_error('Capacity reached')
  end
end
