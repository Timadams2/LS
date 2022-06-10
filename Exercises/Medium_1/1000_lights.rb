# Method that takes an integer that represents the amount of switches as an arg
# returns an array that identifies which lights are on
# first pass swicth all switches on
# second, switch every other
# third, switch every third
# repeat arg times
# create an hash that has 1 through n as keys that start values off

def switch_nth_light(lights, nth)
  lights.each do |spot, state|
    if spot % nth == 0
      lights[spot] = (state == 'off') ? 'on' : 'off'
    end
  end 
end

def on_lights(lights)
  lights.select { |spot, state| state == 'on' }.keys
end

def initialize_switches(repetitions)
  switch_bank = Hash.new
  1.upto(repetitions) { |num| switch_bank[num] = 'off' }
  switch_bank
end

def toggle_lights(num_lights)
  switch_bank = initialize_switches(num_lights)
  
  1.upto(switch_bank.size) do |switch_num|
    switch_nth_light(switch_bank, switch_num)
  end 
  
  on_lights(switch_bank)
end

puts toggle_lights(1000)

    

  