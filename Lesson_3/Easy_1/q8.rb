flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.keep_if {|key,value| key.start_with?('B')}

puts flintstones

# other solution: flintstones.assoc("Barney")