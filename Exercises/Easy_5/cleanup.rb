ALPHABET = ('a'..'z').to_a

def cleanup(text)
  0.upto(text.length - 1) do |idx|
    if ALPHABET.include?(text[idx]) == false
      text.delete(text[idx])
    end
  end
  p text
end

puts cleanup("---what's my +*& line?") == ' what s my line '
    