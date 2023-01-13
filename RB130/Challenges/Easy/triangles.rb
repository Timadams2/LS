#problem
# program that determines what kind of triangle is equilateral, scalene or isosceles
# equilateral means all the sides are the same length
# isosceles has two sides the same length 
# scalene means none of the sides are the same 
# all sides must be greater than 0
# the sum of any two sides must be greater than the third

#examples
# three side lengths are given as arguments during initialization
# kind instance method return the string saying what kind of triangle it is
# raises argument error if the rules dont work
#data structure
# put all sides in an array and assign to @sides
# returns string

#algorithm
# initialize 
  # put three agruments into array ad assign to @sides
  # raise argument error is the sides dont create a valid triangle
# kind instance method 
  # iterate through sides array
  # if there is 3 unique characters, it is scalene
  # if there is 2 unique character, it is isosceles
  # if not any of those, then it is equilateral
# valid triangle 
  # check if the sum of all of the sides minus the largest side is greater than the largest side itself
  
class Triangle
  attr_reader :sides
  
  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3]
    raise ArgumentError, 'Invalid triangle lenghts' unless valid_triangle?
  end
  
  def kind
    if sides.uniq.size == 3
      'scalene'
    elsif sides.uniq.size == 2
      'isosceles'
    else
      'equilateral'
    end
  end
  
  def valid_triangle?
    sides.sum - sides.max > sides.max
  end
end
