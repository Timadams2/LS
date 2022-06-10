def star(num)
  upper_section(num)
  middle_row(num)
  bottom_section(num)
end

def bottom_section(num)
  max = ((num - 1) / 2 ) - 1
  
  0.upto(max) do |space|
    spaces = ' ' * space 
    puts "*#{spaces}*#{spaces}*".center(num)
  end
    
end

def upper_section(num)
  max = ((num - 1) / 2 ) - 1
  
  max.downto(0) do |space|
    spaces = ' ' * space 
    puts "*#{spaces}*#{spaces}*".center(num)
  end
  
end

def middle_row(num)
  puts '*' * num
end

star(9)
star(17)