class GoodDog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
  
  def what_am_i
    "GoodDog Class"
  end 
end

sparky = GoodDog.new("Sparky")
