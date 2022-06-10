# method that return the num if negative
# makes it and returns it if its not

def negative(num)
  num > 0 ? num * -1 : num 
end 

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby