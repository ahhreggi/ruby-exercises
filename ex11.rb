# Exercise 11

print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} years old, #{height} tall and #{weight} heavy."

# "gets" gets a line of text, including a line break at the end.
# This is the user input.
# "gets" returns that line of text as a string value.
# Calling "chomp" on that value removes the line break.

# chomp is the method to remove the trailing new line character "\n" from the string