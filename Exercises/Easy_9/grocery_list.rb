# method that takes array of arrays 
# each array has a item and a quantity
# return and array of the items each inputted there quanity times

# intiliaze empty array 
# then iterate through the outter array
# for each iteration add the first index, second index times
# then return it



def buy_fruit(list)
  result = []
  
  list.each do |item|
    item[1].times do
      result << item[0]
    end 
  end 
  result
end



p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]