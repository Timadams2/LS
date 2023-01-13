# method that takes 3 arguments, start, and and step
# each iteration takes the step each iteration

def step(start, last, stp)
  num = start
  loop do 
    yield(num)
    num += stp
    break if num > last
  end
  nil
end

step(1, 10, 3) { |value| puts "value = #{value}" }