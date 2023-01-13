#problem
# write a program that calculates the distance between two DNA stands
# dna strands are represented by string of letters
# compare the two strings to see how many differnces there are between the two
# if one of them is longer, calculate up to the shorter distance
# returns  the distance in integer form

#examples
# compares two dna objects using hamming_distance method
# empty string means no distance, return 0
# returns 0 if no differences
# cant mutate the dna given

#data structure
# given two strings
# returns an integer

#algorithm
# create a dna class
  # initialize method takes one string representing the strand
    # assign string to instance variable named @strand
    
# iterate through the two strings at the same time
  # create array of the two named strands
  # initialze new variable distance and assign to 0
  # creat method hamming_distance that takes argument other_strand
  # iterate through strands by index
  # strands.smaller.size.times do |idx|
    # idx of each strand, compare them each
      # if different character, add 1 to the distance variable
  
# create method smaller
  # return the string that is smaller
  # assign smallest variable to 'h' *1000
  # iterate throguh the given array and if the strings size is smaller than smallest then reassign
  # return smallest

# return the hamming distance number at the end

class DNA
  attr_reader :strand
  
  def initialize(strand)
    @strand = strand
  end
  
  def hamming_distance(other_strand) 
    distance = 0
    0.upto(smaller(strand, other_strand) - 1) do |idx|
      next if strand[idx] == other_strand[idx]
      distance += 1
    end
    distance
  end
  
  def smaller(strand, other_strand)
    strand.size > other_strand.size ? other_strand.size : strand.size
  end
end

example = DNA.new('ewrwer')
puts example.hamming_distance('ewrwre')
