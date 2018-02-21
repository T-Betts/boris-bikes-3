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
    if @docked_bikes.count >= 100
      raise 'Capacity reached'
    else
      @bike = bike
      @docked_bikes << @bike
    end
  end

  def release_bike(bike)
    if @docked_bikes.empty?
      raise 'Docking station empty'
    else
      @docked_bikes.delete(bike)
      p "Remaining bike count: #{@docked_bikes.count}"

    end
  end

  attr_reader :docked_bikes
end
