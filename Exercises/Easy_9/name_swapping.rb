# method that takes a first and last name with a spcae
# return the last, first

# Algorithm
  # split the name into two strings
  # use index to reference each and add them with a spcae 
  # use concatentaion 
  
def name_swapping(string)
  names = string.split
  
  names[1] + ', ' + names[0]
end

p name_swapping('tim adams')