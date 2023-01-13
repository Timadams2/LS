#problem
# given a natural number and a set of one or more other numbers
# find the sum of all the multiples in the set that are less tha the first number 
# if no set given, use fault 3 and 5

#examples
# SumOfMultiples class
# class method to that takes an argument of the max number
  # finds all the multiples of 3 and 5
# if intialized, have it take a set of numbers
  # to instance method that takes a maximum number and find all of the multiples of the set
  
#data structure
# input integr and array of integer
# output integer

#algorithm
# initialize 
  # takes a set of number as arguments
  # creates array of them and assign to @multiples
  
# to class method
  # intialize @result and assign to empty array
  # iterate from one up to argument, not including arg
  # if you call modulo on argument with 3 or 5 as the argument and its equivalent to 0 then add that to result array

#to instance method
  # intialize @result and assign to empty array
  # iterate through 1 up to argumet, not including arg
  # on each iteration, iterate through multiples array
  # find if the modulo called on outer iteration with inner iteration as arg
    # if this is equivalent to 0, add to @result array
    
class SumOfMultiples
  attr_reader :multiples
  def initialize(*multiples)
    @multiples = multiples
  end
  
  def self.to(max)
    result = []
    1.upto(max - 1) do |dividend|
      result << dividend if dividend % 3 == 0 || dividend % 5 == 0
    end
    return 0 if result.empty?
    result.reduce(:+)
  end
  
  def to(max)
    result = []
    1.upto(max - 1) do |dividend|
      multiples.each do |divisor|
        result << dividend if dividend % divisor == 0
      end
    end
    result.uniq.reduce(:+)
  end
end