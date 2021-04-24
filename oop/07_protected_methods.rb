# class Animal
#   def a_public_method
#     "Will this work? " + self.a_protected_method
#   end

#   protected # everything below is protected

#   def a_protected_method
#     "Yes, I'm protected!"
#   end
# end

# fido = Animal.new
# fido.a_public_method # => Will this work? Yes, I'm protected!
# # fido.a_protected_method # => NoMethodError: protected method `a_protected_method' called for #<Animal:0x000055df90a8f320

# class Parent
#   def say_hi
#     p "Hi from Parent."
#   end
# end

# Parent.superclass # => Object

# class Child < Parent
#   def say_hi
#     p "Hi from Child."
#   end

#   def send
#     p "send from Child..."
#   end
# end

# child = Child.new
# child.say_hi # => "Hi from Child."

# son = Child.new

# lad = Child.new
# lad.send :say_hi

module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :model, :year
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def years_old
    Time.now.year - self.year
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    "My truck  is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
MyCar.gas_mileage(13, 351)
lumina.spray_paint("red")
puts lumina
puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors