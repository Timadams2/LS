# mehtod that takes a year as input
# returns the century
# return it as a string
# must of correct suffix
# every century is if you take off the last two digits, and add one to the rest you get the century
# unless the first two digits are 00, then you dont add 1
# if its end in a one add st
# if it ends in a 2, add nd
# if it is a 3, add rd
# if it is anything else, th
# unless its 11,12 or 13 thats th

# algorithm 
# change inetegr to 
  # intiliaze century varialbe and set to 0
  # find if it ends in 00
    # if it does, set century to the string without last 2
    # if it does not, set it to string withuot last two plus 1
  # find if what century last integer is
    # if it is a teen th 
    # if it is a 1 st
    # if it is a 2 nd
    # if it is a 3 rd
    # else th
    
def century(integer)
  century = ''
  str_num = integer.to_s
  if integer < 100
    return '1st'
  end 
  
  if str_num[-2..-1] == '00'
    century = str_num[0...-2]
  else 
    century = (str_num[0...-2].to_i + 1).to_s
  end
  
  if century[-2..-1] == '11' || century[-2..-1] == '12' || century[-2..-1] == '13'
    return century += 'th'
  end
  
  if century[-1] == '1'
    century += 'st'
  elsif century[-1] == '2'
    century += 'nd'
  elsif century[-1] == '3'
    century += 'rd'
  else
    century += 'th'
  end
  century
end 

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
