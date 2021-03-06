# Write a method that takes an integer as argument, and 
# returns the maximum rotation of that argument. 
# You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, amount)
  digits = number.to_s.chars
  digits[-amount..-1] = rotate_array(digits[-amount..-1])
  digits.join.to_i
end

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845