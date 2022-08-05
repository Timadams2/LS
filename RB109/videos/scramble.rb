# find if you can use the letter from the first string to build the second
# you cannot use the same letter twice
# boolean return 

# algortihm:
  # split the string into a chars and assign tot variable
  # split the second string intot chars and assign tot variable
  # find if each of the second chars has the same count as the first
  # if it does for every character then return true 
  # false otherwise
  
def scramble(str1, str2)
  
  str2.chars.each do |char|
    if (str1.count(char) >= str2.count(char)) == false
      return false
    end
  end
  
  return true
end

p scramble('fhvsyfvwoferld', 'world')
p scramble('efefwwrf', 'eqef')
p scramble('efwheyepfsup', 'heysup')