# method that takes 3 sides lengths and determines 
# returns what type of triangle it is 
# :equilateral if all sides are the same
# :isosceles if 2 sides any sides are equal 
# :scalene if they are all different
# :invalid if a side is zero or or the two shortest length combined isnt as big as the longest length

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max
  
  case 
  when sides.include?(0) || largest_side >= sides.reduce(:+) - largest_side
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral 
  when side1 == side2 || side2 == side3 || side3 == side1
    :isosceles
  else 
    :scalene
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
