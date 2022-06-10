# method that takes and integer arg
# returns array of all integers between one and argument

def sequence(limit)
  (1..limit).to_a
end 

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]