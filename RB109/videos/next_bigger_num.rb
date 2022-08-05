# given a number 
# find the next number with the same integers
# return -1 if no number is can be formed
# always a positive number 
# one digit means return -1 

#algorithm:
  # make the number a string and split into chars
  # find if the last two digits reversed is greater than than the input number
    # from -2 to the array size * -1
    # on each iteration find if that number index reversed and the rest of the number stayed the same, would it be larger than before
    # convert number back into integer before comparing
  # if not find if the last 3 sorted
  # until you have gone of the amount of integers there are
  
def next_bigger_num(num)
  characters = num.to_s.chars
  
  -1.downto(characters.size * -1) do |idx|
    characters[idx..-1] = characters[idx..-1].sort.reverse
    if characters.join.to_i > num
      return characters.join.to_i 
    end
  end
  return -1
end 

p next_bigger_num(123456789)
p next_bigger_num(9)
p next_bigger_num(12)
p next_bigger_num(2017)