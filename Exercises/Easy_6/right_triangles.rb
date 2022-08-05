# method that takes a positive integer
# displays a right triangle made upof stars

# display the argument - 1 spaces with 1 star 
# then subtract the spaces by 1 and the stars plus 1
# iterate throguh it until stars = the input argument

def triangle(num)
  stars = 1
  spaces = num - 1
  
  num.times do
    puts (" " * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end 

p triangle(5)