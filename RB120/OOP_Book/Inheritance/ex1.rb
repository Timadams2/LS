module Raceable
  def can_race?(top_speed)
    top_speed > 120
  end
end

class Vehicle 
  attr_accessor :color, :year, :model
  
  @@number_of_vehicles = 0
  
  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end
  
  def self.gas_mileage(gallons, miles)
    puts "That car gets #{miles / gallons} miles per gallon."
  end
  
  def initialize(y, c, m)
    self.year = y 
    self.color = c 
    self.model = m
    @speed = 0
    @@number_of_vehicles += 1
  end
  
  def speedup(number)
    @speed += number
    puts "The car sped up to #{@speed}mph."
  end
  
  def slowdown(number)
    @speed -= number
    puts "The car slowed down to #{@speed}mph."
  end 
  
  def stop
    @speed = 0
    puts "The car is stopped"
  end
  
  def current_speed
    puts "You are going #{@speed}mph"
  end
  
end

class MyCar < Vehicle
  BRAND = 'Mazda'
  
  def to_s
    "My car is a #{color} #{year} #{model}."
  end 
end

class MyDreamCar < Vehicle
  BRAND = 'Porsche'
  include Raceable
  
  def to_s
    "My dream car is a #{color} #{year} #{model}."
  end 
end

my_car = MyCar.new(2022, 'black', 'Mazda3')
my_dream_car = MyDreamCar.new('any year', 'black', '718 Spyder')

puts my_car
puts my_dream_car

my_car.current_speed
my_car.speedup(60)
my_car.current_speed
my_car.stop
my_car.current_speed

puts Vehicle.number_of_vehicles
puts my_dream_car.can_race?(200)


puts MyCar.ancestors
puts MyDreamCar.ancestors
puts Vehicle.ancestors