#P: method that takes and array as an arguent 
# sorts that array using the bubble sort algorithm 
# your sort will be in place meaning you will mutate the array passed and the arge 
# the array contains at least 2 elements 
# bubble sort is a algorithm that:
## looks at first two inetgers if the first one is bigger then you switch them
## then go to 2 and 3 swicth if neede, and so on 
## go until the largest numbers have bubbled to the top

def bubble_sort(array)
  index1 = 0
  index2 = 1
  
  loop do 
    array[index1] = array 