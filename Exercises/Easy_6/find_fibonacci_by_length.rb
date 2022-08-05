# method that calculates and returns the index of the first fiboncacci number that had the nubber of digits specified
# takes an integer as an argument 
# return an integer
  # represents the index of the fib number
# can be any length

# algorithm
  # iterate through every fibonacci number
    # initialize a variable and set it to 1
    # initialize an array and add the number 1 and 1
    # add the last two digits in the array and add it to the end 
    # store that number in 
  # if the size of the number has the same amount of digits asspecified
     # on each iteration, convert it to a string and find the length
     # if the length is equivalent to the input stop on that number
  # return the index of the number
    # call last on the array
    
def find_fibonacci_index_by_length(digits)
  fib_numbers = [1, 1]
  
  loop do
    fib_numbers << fib_numbers[-2] + fib_numbers[-1]
    break if fib_numbers.last.to_s.length == digits
  end
  
  fib_numbers.index(fib_numbers.last) + 1
end

p find_fibonacci_index_by_length(2)       # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000)
p find_fibonacci_index_by_length(10000) == 47847