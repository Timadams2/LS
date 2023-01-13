module Driveable
  attr_accessor :speed, :heading
  attr_reader :fuel_efficiency, :fuel_capacity
  
  def range
    @fuel_capacity * @fuel_efficiency
  end
end

module Floatable
  
end

class WheeledVehicle
  include Driveable
  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end

end

class Auto < WheeledVehicle
  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  def initialize
    # 2 tires are various tire pressures
    super([20,20], 80, 8.0)
  end
end

class FloatingVehicle
  include Driveable
  attr_reader :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    self.fuel_efficiecy = km_traveled_per_liter
    self.fuel_capacity = liter_of_fuel_capacity
    @propeller_count = num_propellers
    @hull_count = number_hulls
  end
  
  def range
    super + 10
  end
end

class Catamaran < FloatingVehicle
end

class Motorboat < FloatingVehicle
  def initialize
    super(1, 1, km_traveled_per_liter, liter_of_fuel_capacity)
  end
end