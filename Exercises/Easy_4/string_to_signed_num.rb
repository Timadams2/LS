# use string to integer and change it to accomadate - + and nothing

# find if the first character is - + or neither
# if + just delete that and use string to integer
# if nothing, use string too integer
# if -, multiply the result by -1

def string_to_integer(string)
  hsh = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}
  result = 0
  digits_place = 1

  if hsh.has_key?(string[0])
    string.chars.reverse.each do |char|
      result += hsh[char] * digits_place
      digits_place *= 10
    end
  end
  result
end

def string_to_signed_integer(string)
  hsh = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}
  
  if hsh.has_key?(string[0])
    return string_to_integer(string)
  elsif string[0] == '-'
    string.delete!('-')
    return string_to_integer(string) * -1
  elsif string[0] == '+'
    string.delete!('+')
    return string_to_integer(string)
  end 
end 
    


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570')
p string_to_signed_integer('+100') == 100