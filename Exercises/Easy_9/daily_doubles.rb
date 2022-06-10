def twice(number)
  half = ((number.to_s.size) / 2)
  number_string = number.to_s
  if number.odd?
    number * 2
  elsif number_string[0, half] == number_string[half, half]
    number
  else 
    number * 2
  end 
end 

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433)
puts twice(444)
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
      