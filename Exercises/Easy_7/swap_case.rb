# switch every case from lower and upper case or vice versa
# If it is not a letter, dont change it

def swapcase(string)
  character = string.chars.map do |char|
    if ('a'..'z').include?(char)
      char.upcase
    elsif ('A'..'Z').include?(char)
      char.downcase
    else
      char
    end
  end 
  character.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV')