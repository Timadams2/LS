ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []
  
  text.chars.map do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == (' ')
    end 
  end
  
  clean_chars.join
end

puts cleanup("---what's my +*& line?") == ' what s my line '
    