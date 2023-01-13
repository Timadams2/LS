def reduce(array, number=0)
  counter = 0
  result = number
  
  while counter < array.size
    result = yield(result, array[counter])
    counter += 1
  end
  
  result
end

array = [1, 2, 3, 4, 5]

puts reduce(array) { |acc, num| acc + num }                    # => 15
puts reduce(array, 10) { |acc, num| acc + num }                # => 25
# reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass