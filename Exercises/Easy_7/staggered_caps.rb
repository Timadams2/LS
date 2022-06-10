# method that takes a string as an arg
# returns new string that contains original with staggered capitilizations 
# other characters count as a charcter when doing every other but dont change
# go from string to array to string again 

def staggered_case(string)
  staggered_sentence = []
  index = 0 
  
  string.chars.each do |char|
    if char.to_i.to_s == char
      staggered_sentence << char
    else 
      if index.even?
        staggered_sentence << char.upcase
      elsif index.odd?
        staggered_sentence << char.downcase
      end
      index += 1
    end
  end 
  staggered_sentence.join
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers')