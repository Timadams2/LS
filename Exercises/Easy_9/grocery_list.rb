# method takes a grcery list array with quantaties 
# converts into an array of the correct number of each fruit 

def buy_fruit(list)
  list_redone = []
  
  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { list_redone << fruit }
  end
  list_redone
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
