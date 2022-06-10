# write a method that takes a single stirng argument and returns a new string that contains original value of the 
# argument with the first character of every word capitalized and all other letters lowercase

def word_cap(string)
  word_array = string.split.map do |word|
    word.capitalize 
  end 
  word_array.join(' ')
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
  