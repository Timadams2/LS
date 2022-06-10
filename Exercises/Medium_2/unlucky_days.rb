# method that takes a year
# returns the number of friday the 13ths
# year is greater than 1752

require 'date'

def friday_13th(year)
  count = 0 
  
  day = Date.civil(year, 1, 13)
  
  12.times do 
    if day.friday?
      count += 1
    end
    day = day.next_month
  end
  count 
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2
  