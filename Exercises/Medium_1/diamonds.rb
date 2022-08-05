# method that displays a 4 pointed diamond in an n by n grid
# n is always an odd integer
# if it 1, output a star
# if it is an other rnumber, that number represents the amount of stars in the middle line
# they the ddescend and ascend, centered to the middle row, with two less stars
# end once there is one star on each end 

# inpput: odd integer
# output: strings

# algorithm:
  # output on star, centered using the argument
    # iterate through 1 through the middle numbeer - 2
    # next if number is even
    # if its odd
      # output that many stars centered by middle number
    # assign all of this too the variable top
    # output top
  # then add 2 stars, still centered
  # until it gets to the number of stars given as the argument 
  # output that line
  # then reverse what you did on the first lines before that one
    # call reverse on the top variable 
  
def diamond(middle)
  stop = middle - 2
  1.upto(stop) do |num|
    if num.odd?
      puts ('*' * num).center(middle)
    end
  end
  puts '*' * middle
  stop.downto(1) do |num|
    if num.odd?
      puts ('*' * num).center(middle)
    end
  end
end

diamond(1)
diamond(9)
