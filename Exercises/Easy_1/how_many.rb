def count_occurrences(vehicles)
  car = 0
  truck = 0
  motorcycle = 0
  suv = 0 
  
  vehicles.each do |vehicle| 
    if vehicle == 'car'
      car += 1
    elsif vehicle == 'truck'
      truck += 1
    elsif vehicle == 'SUV'
      suv += 1
    elsif vehicle == 'motorcycle'
      motorcycle += 1
    end 
  end
  puts "Car => #{car}"
  puts "Truck => #{truck}"
  puts "Motorcycle => #{motorcycle}"
  puts "SUV => #{suv}"
end 

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)