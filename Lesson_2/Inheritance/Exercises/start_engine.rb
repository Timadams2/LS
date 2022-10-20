class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  def start_engine(speed)
    "Drive #{speed}, please!"
  end
end

truck1 = Truck.new(1994)
puts truck1.start_engine('fast')