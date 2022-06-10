def swap(string)
  new = string.split(' ')
  new.each do |str|
    str[0], str[-1] = str[-1], str[0]
  end 
  new.join(' ')
end 

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde fygui')
puts swap('a') == 'a'  
    
  