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
    
end

p mazda = MyCar.new(2022, 'black', 3)
