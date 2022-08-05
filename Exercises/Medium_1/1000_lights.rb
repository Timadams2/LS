def thou_lights(lights)
  light_hash = initlialize_lights(lights)
  1.upto(lights) do |num|
    light_hash.each do |light, value|
      if light % num == 0
        if light_hash[light] == 'off'
          light_hash[light] = 'on'
        else
          light_hash[light] = 'off'
        end
      end 
    end
  end
  
  result = light_hash.select do |light, state|
    if state == 'on'
      light
    end
  end
  result.keys
end

def initlialize_lights(n)
  hsh = {}
  1.upto(n) do |num|
    hsh[num] = 'off'
  end
  hsh
end

p thou_lights(5)
p thou_lights(10)