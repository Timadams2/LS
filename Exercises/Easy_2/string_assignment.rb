array1 = %w(Moe Larry Curly Shemp Herpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 's') }
puts array2