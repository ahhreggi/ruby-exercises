# Exercise 32: Loops and Array

the_count = [1, 2, 3, 4, 5]
fruits = ["apples", "oranges", "pears", "apricots"]
change = [1, "pennies", 2, "dimes", 3, "quarters"]

# Traditional style for-loop found in other languages
for number in the_count
  puts "This is count #{number}"
end

# Ruby-style for-loop (preferred)
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# We can go through mixed lists too
# This is a different style like above, but with a different syntax
change.each {|i| puts "I got #{i}"}

# We can also build lists, starting with an empty one
elements = []

# Use the range operator to do 0 to 5 counts
(0..5).each do |i|
  puts "adding #{i} to the list."
  # Push the i variable on the *end* of the list
  elements.push(i)
end

# Print the elements
elements.each {|i| puts "Element was: #{i}"}
