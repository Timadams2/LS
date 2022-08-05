# method named spin me take a string as an argument 
# return a atring that contains the same words
# each words characters reversed

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

p spin_me("hello world") # "olleh dlrow"