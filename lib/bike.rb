class Bike
  def working?
    true
  end
end

class DockingStation
  def initialize
    @arr = []
  end

  def dock(bike)
    if @arr.count >= 1
      raise 'Capacity reached'
    else
      @bike = bike
      @arr << @bike
    end
  end

  def release_bike(bike)
    if @arr.empty?
      raise 'Docking station empty'
    else
      @arr.delete(bike)
      p "Remaining bike count: #{@arr.count}"

    end
  end

  attr_reader :bike, :arr
end
