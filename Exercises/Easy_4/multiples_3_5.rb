# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, 
# and then computes the sum of those multiples. For instance, if the supplied number is 20, 
# the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
# You may assume that the number passed in is an integer greater than 1.

def multiple_3_or_5(multiple)
  multiple % 3 == 0 || multiple % 5 == 0
end

def multisum(input)
  number = 1
  answer = 0
  loop do 
    answer += number if multiple_3_or_5(number)
    break if number == input
    number += 1
  end 
  answer
end 
      
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168