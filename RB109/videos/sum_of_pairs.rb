# Given a list of integers and a single sum value,
# return the first two values (parse from the left please) in order of appearance that add up to form the sum.
# it must be the ones that have the second element the earliest than the other if
  # if they both equal that num 

# algorithm:
  # compare all of the integers and find wich ones are equal to the scond number
    # iterate through 0 to second to last integer in the array
      # ARRAY . size - 2
    # compare it to each integer by iterate thorugh it on each iteration
  # if they do add them to an array
  # then create a hash and add the index as its key 
  # find the hash which highest key is lowest 
  # unless theere is two of the same
  
def sum_of_pairs(array, num)
  result = []
  
  0.upto(array.size - 2) do |idx1|
    (idx1 + 1).upto(array.size - 1) do |idx2|
      if (array[idx1] + array[idx2]) == num
        result << { array.index(array[idx1]) => array[idx1], array.index(array[idx2]) => array[idx2]}
      end
    end
  end
  
  key_sum = []
  
  result.each do |hsh|
    key_sum << hsh.values.reduce(:+)
  end
  p key_sum
  return result[key_sum.index(key_sum)].values
end 
# examples

l1= [1, 4, 8, 7, 3, 15]

p sum_of_pairs(l1, 8)
p sum_of_pairs([1, 2, 3, 4, 1, 0], 2)

