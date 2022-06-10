# given a a collection of blocks that has two letter per block
# write a method that returns true if the word passed follows the rules and false otherwise
# rules are you can only use one letter from each block and cant use that letter twice

def block_word?(word)
  spelling_block = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
  spelling_block.each do |string|
    if string.upcase.include?(string)
      spelling_block.delete(string)
    else 
      return false
    end 
    return true
  end
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
