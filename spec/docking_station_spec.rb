require 'bike'

describe DockingStation do
  # it 'responds to release_bike' do
  #  expect(subject).to respond_to :release_bike
  # end
  it { is_expected.to respond_to :release_bike}

  # station = DockingStation.new
  # it 'gets a bike and expects bike to be working' do
  #   expect((station.release_bike).nil?).to eq false
  #   expect((Bike.new).working?).to eq true
  # end

  it 'gets a bike and expects bike to be working' do
    expect(subject.release_bike).to be_instance_of Bike
    expect((subject.release_bike).working?).to eq true
  end

end
