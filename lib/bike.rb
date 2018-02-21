class Bike
  def working?
    true
  end
end

class DockingStation

  def initialize
    @arr = []
  end

  def create_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
    @arr << @bike
  end

  def release_bike(bike)
    if @arr.empty?
      raise "Docking station empty"
    else
      @arr.delete(bike)
      @arr.count
    end
  end

  attr_reader :bike, :arr
end
