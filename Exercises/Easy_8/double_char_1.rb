# write a method that takes a string
# return a new string with every character doubled
# spaces are doubled

# algorithm:
  # split the sentence into words
  # then split the words into chars
  # iterate through the chars using map and assign to a varibale doubled_chars
    # on each iteration, char += char
  # join doubled chars letter back together
  # then join the words back together with two spaces
  
def double_consonants(string)
  words = string.split
  doubled_character = words.map do |word|
    word.chars.map do |char|
      if ('a'..'Z').include?(char)
        char += char
      end 
    end
  end
  words_doubled = doubled_character.map do |character|
    character.join 
  end 
  words_doubled.join("  ")
end 

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""