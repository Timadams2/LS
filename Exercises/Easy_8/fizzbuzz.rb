# write method that takes two args, returns the numbers between the two
# except for divisible by 3 if fizz and 5 is buzz, both is fizzbuzz

def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end 
  puts result.join(', ')
end 
    
def fizzbuzz_value(num)
  case 
  when num % 3 == 0 && num % 5 == 0
    "FizzBuzz"
  when num % 3 == 0
    'Fizz'
  when num % 5 == 0
    'Buzz'
  else 
    num
  end 
end 

puts fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
