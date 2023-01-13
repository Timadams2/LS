#problem
# take a word and computes how many points it worth in scrabble
# aeioulnrst = 1
# dg = 2
# bcmp = 3
# fhvwy = 4
# k = 5
# jx = 8
# qz = 10
# returns an integer

#examples
# score method thats called on a Scrabble object
# case insensitive 
# nil is 0 pionts
# the object will return the points using to_s

#data structure
# input: string
# output: integer

#algorithm:
# constructor
  # takes a word as an argument and assign it to @word instance variable

# score method
  # initialize local variable total and assign to 0
  # iterate through the word
    # unless when valid? returs false when called on the word
  # call downcase on letter
  # the pass it throguh the points for letter 
    # add the return value of this to total 

#valid?
  # if the word has any white spaces, is empty or is nil, return false
  # find if word includes white space
  # then check if is empty 
  # then check if its == nil
  
#points_for_letter
  # takes once letter
  # returns the amount of points for that letter
  
#score class method
  # class method should initialize a new Scrabble object
  # then call the score method on it
  
class Scrabble
  attr_reader :word
  def initialize(word)
    @word = word
  end
  
  def score
    total = 0
    return 0 unless valid?(word)
    word.downcase.chars.each do |letter|
      total += points_for_letter(letter)
    end
    total
  end
  
  def points_for_letter(letter)
    if %w(a e i o u l n r s t).include?(letter)
      return 1
    elsif %w(d g).include?(letter)
      2
    elsif %w(b c m p).include?(letter)
      3
    elsif %w(f h v w y).include?(letter)
      4
    elsif %w(j x).include?(letter)
      8
    elsif %w(q z).include?(letter)
      10
    else
      5
    end
  end
  
  def valid?(word)
    return false if word == nil || word.size == 0 || word.include?(' ')
    true
  end
  
  def self.score(word)
    Scrabble.new(word).score
  end
end

puts Scrabble.new('dasff').score