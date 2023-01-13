def divisors(num)
  result = []
  
  1.upto(Integer.sqrt(num)) do |divisor|
    if num % divisor == 0
      result << divisor
      result << num / divisor
    end
  end
  
  result.uniq.sort
end

puts divisors(1) == [1]
puts divisors(7) == [1, 7]
puts divisors(12)
puts divisors(98) == [1, 2, 7, 14, 49, 98]
puts divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
puts divisors(999962000357) == [1, 999979, 999983, 999962000357]
