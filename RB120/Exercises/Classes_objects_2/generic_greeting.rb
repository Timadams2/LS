module Flyable
  def fly
    puts "Flying away."
  end
end

module Sociable
  def social
    puts "Being social."
  end 
end

module Apex
  def hunt(prey)
    puts "Hunting #{prey}"
  end 
end

class ZooAnimalCategorizationApplication
  def initialize
    @zoo = []
  end
  
  def add_animal(animal)
    @zoo << animal
  end
  
  def animals
    @zoo.each do |animal|
      puts animal
    end
  end
end

class Animal
  HERBIVORE = ['Koala', 'Zebra', 'Parrot']
  
  @@total_animals = 0
  
  def initialize
    @@total_animals += 1
    @species = self.class.to_s
    @animal_id = @@total_animals
    @body_temp = 'warm-blooded'
    @diet = diet
  end
  
  def to_s
    '================================' +
    "\nspecies: #{species}" +
    "\nanimal id: #{animal_id}" +
    "\nweight: #{weight}" +
    "\ndiet: #{diet}" +
    "\nbody temp: #{body_temp}" +
    "\n================================"
  end
  
  private 
  
  attr_reader :animal_id, :weight, :diet, :body_temp, :species
  
  def diet
    if HERBIVORE.include?(species)
      'vegetation'
    else
      'meat'
    end
  end
  
  def calc_weight(lower, upper)
    (lower..upper).to_a.sample
  end
end

class Zebra < Animal
  include Sociable
  def initialize
    super
    @weight = calc_weight(770, 990)
  end
end

class Tiger < Animal
  include Apex
  def initialize
    super
    @weight = calc_weight(200, 680)
  end
end

class Hawk < Animal
  include Flyable
  include Apex
  def initialize
    super
    @weight = calc_weight(12, 15)
  end
end

class Koala < Animal
  def initialize
    super
    @weight = calc_weight(10, 30)
  end
end

class Parrot < Animal
  include Flyable
  include Sociable
  def initialize
    super
    @weight = calc_weight(1, 3)
  end
end

zoo = ZooAnimalCategorizationApplication.new
zoo.add_animal(Parrot.new)
zoo.add_animal(Tiger.new)
zoo.add_animal(Koala.new)
zoo.add_animal(Zebra.new)
zoo.add_animal(Hawk.new)
zoo.animals