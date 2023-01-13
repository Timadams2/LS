#problem
# find if the given number is abundant, perfect or deficient
# based on its aliquot sum
  # this is a sum of all of the positive dvisors added together
# perfect means this sum is the same as the given number
# abundant means the sum is greater than the number
# deficient means it is less than the number
# prime numbers are always deficient

#examples
# determined using classify class method
# takes a number an argument
# negative number returns a StandarError

#data structure
# input: integer
# string: string

#algorithm
# define a class method named classify
  # take integer as argument
  # raises error if negative
  # determines if the numbers divisors combined is more less or the same as the given number
  # return the string the corresponds with hat kind of number it is

# instance method divisors_combined
  # initialize local variable reslt and assign to empty array
  # iterates from 1 up to the given number divided by 2
  # each time, modulo method is called the given number and given the number of the ieteration as the argument
  # if this is equivalent to 0, add to result array
  # return the seult array with reduce called on it with argument + as a symbol
  
class PerfectNumber
  def self.classify(number)
    raise StandardError.new if number <= 0
    
    if divisors_combined(number) == number
      'perfect'
    elsif divisors_combined(number) > number
      'abundant'
    elsif divisors_combined(number) < number
      'deficient'
    end
  end
  
  def self.divisors_combined(number)
    result = 0
    1.upto(number / 2) do |divisor|
      if number % divisor == 0
        result += divisor
      end
    end
    result
  end
end

PerfectNumber.classify(28)