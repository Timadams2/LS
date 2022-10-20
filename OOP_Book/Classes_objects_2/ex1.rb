class MyCar
  attr_accessor :year, :color, :model
  
  def initialize(y, c, m)
    self.year = y 
    self.color = c 
    self.model = m
  end
  
  def speed
    @speed = 0
  end
  
  def speedup(number)
    @speed += number
  end
  
  def slowdown(number)
    @speed += number
  end 
  
  def stop
    @speed = 0
  end
  
  def current_speed
    @speed
  end
  
  def self.gas_mileage(gallons, miles)
    puts "That car gets #{miles / gallons} miles per gallon."
  end
  
  def to_s
    "My car is a #{color} #{year} #{model}."
  end 
  
end

mazda = MyCar.new(2022, 'black', "Mazda3")
puts mazda

MyCar.gas_mileage(21, 380)