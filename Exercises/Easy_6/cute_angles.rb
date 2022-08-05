# method that takes a floating point number that represents an angle between 0 and 360 degrees
# returns a String that represents that angle in degrees, minutes and seconds
# degree symbol (°) to represent degrees
# a single quote (') to represent minutes
# double quote (") to represent seconds.
# A degree has 60 minutes, while a minute has 60 seconds
# answer consists of 3 numbers
# degree then minutes then seconds

# algorithm
  # initialize an empty string 
  # take the input and cut off any decimal places if there are any
  # then add degree sign 
  # find the minute equivalent of the input
    # 30 degrees is 0
    # 93 is 2:05
    # 254 
  # insert it into result string with ' following it
  # find the second equivalent
  # insert it with " after it 
  # return these numbers wrapped in ( and a % in front 

def dms(integer)
  
end 
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")