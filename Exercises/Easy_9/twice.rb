# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. 
# For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.
# Write a method that returns 2 times the number provided as an argument
# unless the argument is a double number; double numbers should be returned as-is.

# takes a number as an argument 
# if the argument is a double numbers, return that
# if it is not return twice the number 
# double number is the first half of the numbers is the same as the second half
# in the correct order
  # cant be double number is there is an odd amount of integers
# only integers
# always an integer

# algorithm:
  # find if the number is a double
    # change the number tot a string
    # to find if the number is a double split it in half
    # use the the index 0 thorugh the string.size / 2
    # then string.size /2 ..-1 
  # if it is return the number
  # if it is not then double it

def twice(number)
  digits = number.to_s
  index = (digits.size / 2) - 1
  
  if digits.size == 1
    return number * 2
  elsif digits[0..index] == digits[index + 1..-1]
    return number
  else
    return number * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10