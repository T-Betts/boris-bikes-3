require 'bike'

describe DockingStation do
  # it 'responds to release_bike' do
  #  expect(subject).to respond_to :release_bike
  # end
  it { is_expected.to respond_to :create_bike }

  # station = DockingStation.new
  # it 'gets a bike and expects bike to be working' do
  #   expect((station.release_bike).nil?).to eq false
  #   expect((Bike.new).working?).to eq true
  # end

  it 'gets a bike and expects bike to be working' do
    expect(subject.create_bike).to be_instance_of Bike
    expect(subject.create_bike.working?).to eq true
  end

  it 'adds bike to DockingStation' do
    bike = Bike.new
    subject.dock(bike)
    expect((subject.arr).include?(bike)).to eq true
  end

  it 'raises error if docking station is empty otherwise release bike' do
    bike = Bike.new
    expect {subject.release_bike(bike)}.to raise_error("Docking station empty")
    subject.dock(bike)
    expect(subject.release_bike(bike)).to eq 0
  end

end
