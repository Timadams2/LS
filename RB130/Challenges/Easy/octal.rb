#problem
# given a octal input string
# return a decimal ouput
# invalid input returns 0
# every digit must be multiplied time 8 to the nth power
  # n being the number digit, from right to left, -1

#examples
# to_decimal instanc emethod is called on instanitated Octal class
# takes a string version of and integer
# only can allow numbers 0-7

#data structure
# input string 
# output integer

#algorithm:
# constructor
  # takes string and assigns it to @number
  
# to decimal
  # initlaize result variable and assign to empty array
  # break the number into chars
  # iterate throough each integers
    # start with the least index
      # the size of the character array - 1 down to 0
    # mulitply the charcter converted to an integer * 8^num
      # add this to result
      
# valid?
  # iterate through the characters and if any of them are greater than 7 return false
  
# to_digits
  # call chars map on @number and change each to a integer on each iteration
  
class Octal
  attr_reader :number
  def initialize(number)
    @number = number
  end
  
  def to_decimal
    return 0 unless valid?(number)
    result = []
    digits = to_digits(number)
    
    0.upto(digits.size - 1) do |num|
      result << digits[num] * (8**(num))
    end
    result.reduce(:+)
  end
  
  private
  
  def valid?(str)
    return false if to_digits(str).any? {|num| num > 7} || str.chars.any? {|char| ('a'..'z').include?(char)}
    true
  end
  
  def to_digits(number)
    number.chars.reverse.map do |num|
      num.to_i
    end
  end
end