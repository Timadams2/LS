# method that takes two integers as arguments
# first arument is a count
# second is the first number of a sequence that your method with create 
# return an array of integers starting at the second arg, and adding to itself first arg times

# if first argument is 0, return empty array 
# always integers

# input: two integers
# output: array of integers

# DS: array

# algorithm: 
  # starting with the second integer argument
  # add to an array that integer + itself first argument times
    # initialize empty array
    # call times on the first argument 
      # use shovel operator to add intger + ithe last interger in the array
    # the return that array

def sequence(num1, num2)
  result = []
  
  num1.times do 
    if result.empty?
      result << num2
    else
      result << result.last + num2
    end
  end 
  result
end 
  
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7)
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []