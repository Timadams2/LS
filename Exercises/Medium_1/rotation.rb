# method that rotates an array by moving the first element to the end of the array
# original rray should not be modified
# cannot use rotate

# initialize a result array
# put all of the element from original array in new exeptc first
  # iterate trhough indexes 1 to array size - 1 
  # add eache element in 
# then put in the first
  # then add the first element last using shovel operator

def rotate_array(array)
  result = []
  if array == nil
    return "yo"
  end 
  1.upto(array.size - 1) do |num|
    result << array[num]
  end
  result << array[0]
  result
end

# method that can rotate the last n digits of a number
# given number as first argument 
# second argument is how many digits on the right to be rotated
# must return an integer

# split the number into an array
# initialize result array
# use the rotate array method to rotate only the element on the right
  # exct number specified in argument 
  # rotate array argument will be the array -given number to -1
  # add the left digits to result array first
    # index 0 until -given number, not including
# join result back together as integer
# return that

def rotate_rightmost_digits(integer, rightmost)
  digits = integer.to_s.chars
  result = []
  result << digits[0...-rightmost]
  result << rotate_array(digits[-rightmost..-1])
  result.join.to_i
end

# method that take sna integer as an argument 
# return the max rotation of that argument 
# max rotation means you roatate the whole array
  # then you rotate it witouht the first index,
  # you rotate it until you rotate the last two
# gieven an integer
# return an integer

# algorithm 
  # split the integer up into an array
  # rotate_rightmost_integers on whole array
    # rightmost is the size of it 
  # subtract 1 from rightmost
    # call the rightmost method again
  # when right most is at 1
  # return that array now joined and as an integer

def max_rotation(number)
  amount = number.to_s.length
  result = number 
  
  loop do 
    result = rotate_rightmost_digits(result, amount)
    amount -= 1
    break if amount <= 1
  end
  result 
end

p max_rotation(735291)#  == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845