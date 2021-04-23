# Exercise 28: Boolean Practice

puts true && true # true
puts false && true # false
puts 1 == 1 && 2 == 1 # false
puts "test" == "test" # true
puts 1 == 1 || 2 != 1 # true
puts true && 1 == 1 # true
puts "test" == "testing" # false
puts 1 != 0 && 2 == 1 # false
puts "test" != "testing" # true
puts "test" == 1 # false
puts !(true && false) # true
puts !(1 == 1 && 0 != 1) # false
puts !(1 != 10 || 3 == 4) # false
puts !("testing" == "testing" && "Zed" == "Cool Guy") # true
puts 1 == 1 && (!("testing" == 1 || 1 == 0)) # true
puts "chunky" == "bacon" && (!(3 == 4 || 3 == 3)) # false
