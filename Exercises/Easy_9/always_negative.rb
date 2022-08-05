# method that takes a number
# return the negative of that number
# if its already negative  return that number 
# if its 0 return that number
 # algorithm 
 # find if the number is negative 
  # find if it is 0 or less than 0
 # if it is, return the number
 # if it is not, multiply by -1

def negative(number)
  if number <= 0
    number
  else
    number * -1
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby