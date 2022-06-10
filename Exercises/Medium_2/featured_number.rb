# method takes a single integer as an arg
# returnthe next featured number greater than the arg
# featured number is
## odd
## multiple of 7
## no multiple digits

def featured(number)
  number += 1
  number += 1 until number.odd? && integer % 7 == 0
  
  loop do 
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end
  
  'There is no possible number that fulfills those rquirments'
end

puts featured(12)
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

  