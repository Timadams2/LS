#problem
# write a program that generate the lyrics of the 99 bottles of beer song

#examples
# verse class method
  # takes amount of bottle as the argument
  # returns the line, starting with the argument number and ending with the argument number - 1
# verses class method
  # takes two verse numbers and shows the lines from the first number until the second 
# lyrics class method
  # returns verses 99 through 0
  
#algorithm
# verse class method
  # return the string with argument as the first two number and then the argument - 1 as the third
  # if 0, then the second nnumber is 99
# verses class method
  # iterate from first number to the second number
    # call verse with each of these as the argument
# lyrics class method
  # verses from 99 to 0
  
class BeerSong
  def self.verse(beers)
    if beers == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, #{beers + 99} bottles of beer on the wall.\n"
    elsif beers == 2
      "#{beers} bottles of beer on the wall, #{beers} bottles of beer.\n" \
      "Take one down and pass it around, #{beers - 1} bottle of beer on the wall.\n"
    elsif beers == 1
      "#{beers} bottle of beer on the wall, #{beers} bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "#{beers} bottles of beer on the wall, #{beers} bottles of beer.\n" \
      "Take one down and pass it around, #{beers - 1} bottles of beer on the wall.\n"
    end
  end
  
  def self.verses(start, finish)
    song = []
    start.downto(finish) do |beers|
      song << self.verse(beers)
    end
    song.join("\n")
  end
  
  def self.lyrics
    self.verses(99, 0)
  end
end