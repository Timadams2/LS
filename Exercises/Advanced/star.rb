# method that displays an 8 pointed star 
# made up of 4 lines of n stars 
# n is an odd integer
# one going up one down and two diagonal through the middle to make 8 points
# it will fit in an n by n grid
  # 3 stars on each line other than the middle
  # middle star is always in the same place 
  
# algortihm
  # output three stars each line
    # output two stars on the side and one in the middle
      # output a star
        # then output a star centered by the argument num minus 2
        # each time subtract 2 from what it should be centered by
      # then output another star on the end 
      # center all of this each time to the argument number
    # the ones on the outside move one star closer until touching 
    
  # once you get to the middle print num amount of the stars in a line
    # print * num
    
  # then reverse what happened above

def star(num)
  middle = num - 2
  (num / 2).times do 
    puts ('*' + ('*').center(middle) + '*').center(num)
    middle -= 2
  end
  puts '*' * num
  (num / 2).times do
    middle += 2
    puts ('*' + ('*').center(middle) + '*').center(num)
  end
end

star(51)