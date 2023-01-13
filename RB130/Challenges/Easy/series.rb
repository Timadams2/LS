#problem
# takes a string of digits
# returns all the possible consecutive number series of a specific length
# returns an error if too long of a string is requested

#examples 
# takes string of digits at initlization
# takes the specific length as an argument for slices instance method

#data_structure
# input: string of digits
# input: nexted array of integers

#algorithm
# constructor
  # takes string of digits and assigns to instance variable @string

# slices instance method
  # initialize result array and assign to empty array
  # takes the size of substring n that should be created and put in a new array
  # iterate from the first index to the size of the string requested - 1
  # add them to result array after calling string to array of intergers
  
# string to array of integer
  # takes a substring
  # iterate through each integer using map and makes it an integer

class Series
  attr_reader :string
  def initialize(string)
    @string = string
  end
  
  def slices(substring_size)
    raise ArgumentError.new if substring_size > string.size
    result = []
    0.upto(string.size - (substring_size)) do |idx|
      result << string_to_array_of_integers(string[idx, substring_size])
    end
    result
  end
  
  def string_to_array_of_integers(substring)
    substring.chars.map do |char|
      char.to_i
    end
  end
end

series = Series.new('5843659283456')
puts series.slices(4)