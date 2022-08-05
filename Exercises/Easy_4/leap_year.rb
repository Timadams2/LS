# method that takes any year after 0 
# returns true if it is a leap year
# it must be divisible by 4 
# unless it is divisible by 100 and not 400

def leap_year?(year)
  if year < 1776 && year % 4 == 0
    true
  else 
    true unless year % 4 == 0 && ((year % 100 == 0) && (year % 400 != 0))
  end
end 

p leap_year?(2016) == true
p leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true