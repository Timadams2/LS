# method that return true if the word passed in as an argument can be spelled from ths set of bloack 
# false if it cant
# if you use a letter from one of the blocks, you cant use that block again
# case insensitive
# input string outpu boolean

# algorithm:
  # iterate through the character of the string
  # on each iteration
    # iterate through the hash with the blocks
    # if on any iteration, that key includes on a character in its value
    # move that key to the used hash
  # if at the end the used hash, with uniq keys has the same amount of element as the string has lnegth then true
  # otherwise false
  
def block_word?(string)
  letters = {1 => ['B', 'O'], 2 => ['X','K'], 3 => ['D', 'Q'], 4 => ['C', 'P'], 5 => ['N', 'A'], 6 => ['G', 'T'], 7 => ['R', 'E'], 8 => ['F', 'S'], 9 => ['J', 'W'], 10 => ['H','U'], 11 => ['V', 'I'], 12 => ['L', 'Y'], 13 => ['Z','M']}
  characters = string.chars
  used = []
  
  characters.each do |char|
    letters.each do |key, value|
      if value.include?(char.upcase)
        used << letters[key]
      end
    end
  end
  
  return true if used.uniq.size == string.length
  false
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
