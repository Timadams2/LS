items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*group, wheat|
  puts group.join(', ')
  puts wheat
end

gather(items) do |apple, *group, wheat|
  puts apple
  puts group.join(', ')
  puts wheat
end

gather(items) do |apple, *group|
  puts apple
  puts group.join(', ')
end

gather(items) do |apple, corn, cabbage, wheat|
  puts "#{apple}, #{corn}, #{cabbage}, #{wheat}"
end