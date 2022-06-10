CAPITALS = 'A'..'Z'
NOT_CAPITALS = 'a'..'z'

def percentage(array)
  percent = 0.0
  array.map do |num|
    percent += num
  end 
  percent / (array.size)
end

def lettercase_percentages(string)
  percentages = {}
  uppercase_chars = []
  lowercase_chars = []
  neither_chars = []
  characters = string.split.chars
  
  characters.map do |letter|
    if CAPITALS.include?(letter)
      uppercase_chars << letter
    elsif NOT_CAPITALS.include?(letter)
      lowercase_chars << letter
    else
      neither_chars << letter
    end
  end
  percentages[:uppercase_percetages] = percentage(uppercase_chars)
  percentages[:lowercase_percentages] = percentage(lowercase_chars)
  percentages[:neither_percentages] = percentages(neither_chars)
  percentages
end 

puts lettercase_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
puts lettercase_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
puts lettercase_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }