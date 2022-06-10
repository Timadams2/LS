def triangle(num)
  spaces = num - 1 
  stars = 1 
  
  loop do  
    print ' ' * spaces
    spaces -= 1
    puts '*' * stars
    stars += 1
    break if stars == num
  end 
end 

puts triangle(9)
    