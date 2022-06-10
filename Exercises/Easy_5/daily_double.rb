def crunch(string)
  collapsed_array = []
  
  string.chars.each do |letter|
    next if collapsed_array.last == letter
    collapsed_array << letter
  end 
  collapsed_array.join
end 

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('gorgo brfuwbergu ieubwf ikqiuebbfbbbf')