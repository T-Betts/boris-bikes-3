class Bike
  def working?
    true
  end
end

class DockingStation
  def initialize
    @docked_bikes = []
    20.times {self.dock(Bike.new)}
  end

  def dock(bike)
    fail 'Capacity reached' if @docked_bikes.count >= 100
    @bike = bike
    @docked_bikes << @bike
  end

  def release_bike
    fail 'Docking station empty' if @docked_bikes.empty?
    @docked_bikes.pop
    "Remaining bike count: #{@docked_bikes.count}"
  end

  attr_reader :docked_bikes
end
