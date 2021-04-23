# Exercise 12

print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

# .to_i converts the value into an integer
# .to_f converts the value into a float

print "Give me your money: "
number = gets.chomp.to_f

result = number * 0.1
puts "Here's your change: #{result.round(2)}"

# .round(n) rounds a float to n decimal places