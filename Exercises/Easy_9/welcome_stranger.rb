def greetings(name_array, details_hash)
  puts "Hello, #{name_array.join(' ')}!, nice to have a #{details_hash[:title]} #{details_hash[:occupation]}"
end 

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })