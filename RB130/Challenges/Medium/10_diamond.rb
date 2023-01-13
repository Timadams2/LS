# problem
# create a class called diamond
# takes an input thats a letter
# return the diamond shape with the letter given at the widest point
# starts with the letter a and works through the alphabet until it gets to the gievn letter
# it then works it way  through the alphabet unitl it gets back to a
# only two letter on each row, accept for A
# the width betwwn the widest point is the same size as the legth between the As
# capital letters
# if A is given then it is just A
# takes

#data structures
# makes_diamond class method
  # takes string as argument
# input: string
# output: string

#algorithm
# define a class method named make_diamond
# create an array of characters starting from B and going until the parameter
  # assign to char_string variable
  # unless it is A, then just output A
# iterate through the character array and on each iteration with its index, add the character to a new array with the spaes in front of it
  # spaces should be calculated by its index
  # make in create_quarter instance method
# iterate through half_levels and on each iteration, add to a new array the array reversed joined together, a space and the original array in on array
  # top_level instance method 
# iterate through the top level array and create a new nested array of the array in reverse order
  # bottom_level instance method
# join the two array and assign to levels
# iterate through the whole thing and call join on all of them with A at the beggining and end
  # do this in self.make_diamond class



class Diamond
  def self.make_diamond(last)
    return "A\n" if last == 'A'
    
    right_quarter = create_right_quarter(last)
    left_quarter = create_left_quarter(last)
    top = create_top(left_quarter, right_quarter)
    bottom = create_bottom(top)
    diamond = connect_sections(top, bottom)
    diamond.join("\n") + "\n" unless diamond.size == 3
    diamond = " A\n"\
              "B B\n"\
              " A\n"
  end
  
  def self.create_right_quarter(last)
    characters = ('B'..last).to_a
    quarter_arr = []
    
    characters.each_with_index do |char, index|
      arr = [] 
      (index * 2).times { arr << ' ' }
      arr << char
      quarter_arr << arr
    end
    quarter_arr
  end
  
  def self.create_left_quarter(last)
    characters = ('B'..last).to_a
    quarter_arr = []
    
    characters.reverse.each_with_index do |char, index|
      arr = [] 
      index.times { arr << ' ' }
      arr << char
      quarter_arr << arr
    end
    quarter_arr.reverse
  end
  
  def self.create_top(left_quarter, right_quarter)
    top_arr = []
    index = 0
    right_quarter.each do |quarter|
      level = []
      level << left_quarter[index] << (' ') << quarter
      top_arr << level.flatten
      index += 1
    end
    top_arr
  end
  
  def self.create_bottom(top_arr)
    top_arr[0...-1].reverse
  end
  
  def self.connect_sections(top_arr, bottom_arr)
    return 'B B' if top_arr[0].include?('B')
    diamond_arr = []
    diamond_arr << (' ' * (bottom_arr[0][1].ord - 'A'.ord + 1)) + 'A'
    top_arr.each do |level|
      diamond_arr << level.join
    end
    
    bottom_arr.each do |level|
      diamond_arr << level.join
    end
    
    diamond_arr << (' ' * (bottom_arr[0][1].ord - 'A'.ord + 1)) + 'A'
    diamond_arr
  end
end

right_quarter = Diamond.create_right_quarter('B')
left_quarter = Diamond.create_left_quarter('B')
top = Diamond.create_top(left_quarter, right_quarter)
Diamond.create_bottom(top)
puts Diamond.make_diamond('B')