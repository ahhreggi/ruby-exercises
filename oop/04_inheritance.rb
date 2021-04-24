# class Animal
#   def speak
#     "Hello!"
#   end
# end

# class GoodDog < Animal # GoodDog inherits from Animal
#   attr_accessor :name
#   def initialize(n)
#     self.name = n
#   end

#   def speak
#     "#{self.name} says arf!"
#   end
# end

# class Cat < Animal # Cat inherits from Animal
# end

# sparky = GoodDog.new("Sparky")
# paws = Cat.new
# puts sparky.speak # => Hello!
# puts paws.speak # => Hello!

module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable # common naming convention -> use the "able" suffix on whatever verb describes the behavior that the module is modeling
  def swim
    "I'm swimming!"
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

class Fish < Animal
  include Swimmable # mixing in Swimmable module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable # mixing in Swimmable module
end

class GoodDog < Animal
  include Swimmable
  include Climbable
end

sparky = Dog.new
nemo = Fish.new
paws = Cat.new

sparky.swim # => I'm swimming!
nemo.swim # => I'm swimming!
# paws.swim # => NoMethodError: undefined method `swim' for #<Cat:0x0000565276608140>

puts "---Animal method lookup---"
puts Animal.ancestors

fido = Animal.new
fido.speak # => I'm an animal, and I speak!

puts "---GoodDog method lookup---"
puts GoodDog.ancestors