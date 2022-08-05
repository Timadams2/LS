# method that takes the total amount of switches as the arg
# return what light are on after n amouunt of switches
# n is the amount of lights there are
# lights start off
# round 1 switch every light starts on
# round 2 means the second and every other are on 
# round 3 you switch every mutplie of 3
  # index + 1
# do n lights n amount of times

# input: integer
# output: array

# algorithm
  # initialize an empty hash
  # fill array with n lights with the value off
  # iterate through the hash n times
    # seperate method
    # itarte using n to intilize a hash 
  # first round, switch every light from what it was
  # second round, switch every even key
  # third, switch every key divisible by 3
  # star round again if it hasnt broken yet
    # intiliaze round variable, starting at 1
    # add 1 each iteration unless its 3 then subtract by 2
    
def thou_lights(lights)
  light_hash = initlialize_lights(lights)
  round = 1
  
  lights.times do
    if round == 1
      light_hash.each do |light, value|
        if light_hash[light] == 'off'
          light_hash[light] = 'on'
        else
          light_hash[light] = 'off'
        end
      end
      round += 1
    elsif round == 2
      light_hash.each do |light, value|
        if light % 2 == 0
          if light_hash[light] == 'off'
            light_hash[light] = 'on'
          else
            light_hash[light] = 'off'
          end
        end 
      end
      round += 1
    else
      light_hash.each do |light, value|
        if light % 3 == 0
          if light_hash[light] == 'off'
            light_hash[light] = 'on'
          else
            light_hash[light] = 'off'
          end
        end
      end
      round -= 2
    end
    p light_hash
    p round 
  end
  p light_hash
end

def initlialize_lights(n)
  hsh = {}
  
  1.upto(n) do |num|
    hsh[num] = 'off'
  end
  hsh
end 


p thou_lights(5)