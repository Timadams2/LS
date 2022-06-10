# use string_to_integer method to create a method that 
# returns a negative when theres a - to start
# returns a positive if + or nothing

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(signed_num_string)
  if signed_num_string.start_with?('+')
    string_to_integer(signed_num_string[1..-1])
  elsif signed_num_string.start_with?('-')
    string_to_integer(signed_num_string[1..-1]) * -1
  else
    string_to_integer(signed_num_string)
  end 
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
