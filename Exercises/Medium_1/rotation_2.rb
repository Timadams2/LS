# Write a method that can rotate the last n digits of a number

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, amount)
  digits = number.to_s.chars
  digits[-amount..-1] = rotate_array(digits[-amount..-1])
  digits.join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917