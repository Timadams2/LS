# method that takes an array of integers
# mulitplies all the numbers together
# divides that by the number of entries in the array
# outputs the result rounded to the 3 decimal places 
# non empty
# one integer means just take thatnumber and make it have 3 decimals

# initialize the product and assign it to 1
# multiply all the numbers 
  # iterate through the number and multiply by the product
# take the sum / the size of the array
# outputwiht 3 decimals
  # float with 3 as an argument 
  
def show_multiplicative_average(array)
  product = 1.0
  
  array.each do |num|
    product *= num
  end 
  
  (product / array.size).round(3)
end 

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

