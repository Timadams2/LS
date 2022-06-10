def merge(arr1, arr2)
  merged_array = []
  index1 = 0
  index2 = 0
  
  if arr1.empty?
    merged_array.push(arr2)
  elsif arr2.empty?
    merged_array.push(arr1)
  else
    loop do
      if index1 == arr1.size
        merged_array.push(arr2[index2..-1][0])
        break
      elsif index2 == arr2.size
        merged_array.push(arr1[index1..-1][0])
        break
      else
        if arr1[index1] == arr2[index2]
          merged_array.push(arr1[index1], arr2[index2])
          index1 += 1
          index2 += 1
        elsif arr1[index1] >= arr2[index2]
          merged_array.push(arr2[index2])
          index2 += 1
        else
          merged_array.push(arr1[index1])
          index1 += 1
        end
      end
    end
  end
  merged_array.flatten
end

p merge([1, 5, 9], [2, 6, 8])
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], [])