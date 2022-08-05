# method that takes a string 
# returns that string in a box 
# box has + on the corners
# | on the sides
# - on top
# and a spacee on every side of the string

# output + with - sstring size times plus two and then another +
  # do this on the bottom too
# output | and then spaces string size times plus 2 and then another |
  # do this on the fourth line as well
# output | then the string centered between the string size times plus 2

def bannerizer(string)
  puts '+' + ("-" * (string.size + 2)) + '+'
  puts '|' + (' ' * (string.size + 2)) + '|'
  puts '|' + string.center(string.size + 2) + '|'
  puts '|' + (' ' * (string.size + 2)) + '|'
  puts '+' + ("-" * (string.size + 2)) + '+'
end

bannerizer('To boldly go where no one has gone before.')
bannerizer('Go Pats')

