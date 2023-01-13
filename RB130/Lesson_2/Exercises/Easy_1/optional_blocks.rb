def compute(element)
  return yield(element) if block_given?
  "Does not compute"                    
end

puts compute(5) { |num| num + 3 } == 8
puts compute('a') { |letter| letter + 'b' } == 'ab'
puts compute('yo') == 'Does not compute.'

