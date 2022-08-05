# method that takes an array of number
# return the sum of the sums of each of the leading substrings
# if one number, return that

# input: array
# output: integer
# DS: array

# algorithm:
  # find what each substring combined is
  # initliaze result variable and set to 0
  # iterate through 0..array. size and then have that number be th e second index
    # then have 0 always be the first index
    # take the sum each iteration and add it to the result
  # return result

def sum_of_sums(arr)
  result = 0
  
  0.upto(arr.size - 1) do |idx2|
    result += arr[0..idx2].reduce(:+)
  end
  result
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35