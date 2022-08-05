# convert a string to a number
# cant use premade methods
# always numeric characters
# never empty 

# iterate thorugh the characters backwards
# change the character to its number
  # creat a hash to has its corresponding char and number
  # key is string and value is number
# add it to the number
  # initiliaze a number to add each result to on each iteration
# multiply each number to that when it is is added, its in the right digits spot
  # start with 1 and then multiply it by 10 on each iteration
# return that number


def string_to_integer(string)
  hsh = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}
  result = 0
  digits_place = 1
  
  string.chars.reverse.each do |char|
    result += hsh[char] * digits_place
    digits_place *= 10
  end
  result
end

p string_to_integer('4321')
p string_to_integer('4321') == 4321
p string_to_integer('23')