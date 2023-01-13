#problem
# when a new robot is initilized, it is given a random name
# name must be 2 uppercase letters and 3 integers
# if the robot is reset wipe it names
  # then when asked for its name again, a new one will be generated
# the name must be different, but also random

#examples
# instance method name will return the name of the robot
  # it will generate one if there is not one yet
# instance method reset will delete the name
# two different robots ont the same class cant have the same name either

#data structure
# name will return a string
# class method to keep track of used names
  # array
  
#algorithm
# class variable used_names
  # initlaize class variable and assign to empty array
  # whenever a new name is generate, add the old name to this array
  
# instance method name
  # if @name is empty
    # call generate_new_name
  # return the name
# instance method reset
  # reassign @name to an empty string
  
# prvate instance method generate_name
  # initlize new_name variable and asign to empty array
  # add two random capital letters
  # then add 3 random numbers to the array
  # at the end, check if this is included in the class variable used_name array
  # if it is included, the redo the porcess of finding letters and numbers
  # if it in not included, assign it to @name


class Robot
  @@used_names = []
  attr_accessor :name
  
  def initialize
    @name = generate_name
  end
  
  def reset
    @@used_names.delete(@name)
    @name = generate_name
  end
  
  def generate_name
    new_name = []
    loop do
      2.times { new_name << ('A'..'Z').to_a.sample }
      3.times { new_name << rand(9) }
      break unless @@used_names.include?(new_name.join)
      new_name = []
    end
    @@used_names << new_name.join
    new_name.join
  end
  
end

puts Robot.new.name