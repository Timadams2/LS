puts ">> Please enter an integer greater than 0: "
integer = gets.chomp.to_i
puts ">> Please enter 's'to compute the sum, 'p' to compute the product."
s_or_p = gets.chomp

count = 1
sum = 0
prod = 1

loop do 
  if s_or_p == 's'
    sum += count
  else 
    prod *= count
  end
  break if count == integer
  count += 1
end 

if s_or_p == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum}"
else 
  puts  "The product of the integer between 1 and #{integer} is #{prod}"
end 