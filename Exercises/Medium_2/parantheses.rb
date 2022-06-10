# Write a method that takes a tringas an arg
# returns true if parantheses are balances, false otherwise
# paranthese must start with ( 

def balanced?(string)
  parens = 0
  string.chars.each do |char|
    if char == '('
      parens += 1
    elsif char == ')'
      parens -= 1
    break if parens < 0
    end
  end
  
  parens.zero?
end 

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
