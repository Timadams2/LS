# method that searches for all the multiples of 3 and 5
# add themm all up and return that number

# iterate through every number from 1 to the integer
# intitialize a sum variable 
# if the number if divisible by 3 or 5, add it to the sum

def multisum(integer)
  sum = 0
  
  1.upto(integer) do |num|
    if num % 3 == 0 || num % 5 == 0
      sum += num 
    end 
  end 
  
  sum
end 

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168