class GoodDog
  @@number_of_dogs = 0 # a class variable
  DOG_YEARS = 7 # a constant
  attr_accessor :name, :height, :weight, :age

  def initialize(n, h, w, a)
    @@number_of_dogs += 1
    self.name = n
    self.height = h
    self.weight = w
    self.age = a * DOG_YEARS
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end

  # class method definition => can be used without instantiation
  # e.g. GoodDog.what_am_i
  def self.what_am_i
    "I'm a GoodDog class!"
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  # override the default to_s that comes with Ruby
  # default behavior: returns the name of the object's class and encoding of the object id
  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

# puts GoodDog.total_number_of_dogs # => 0

# riley = GoodDog.new("Riley", "12 inches", "10 lbs", 11)
# russell = GoodDog.new("Russell", "24 inches", "45 lbs", 6)

# puts GoodDog.total_number_of_dogs # => 2

# puts riley # => "This dog's name is Riley and it is 77 in dog years."

# # p calls the inspect method, which is useful for debugging purposes so we don't override it
# # p riley is equivalent to puts riley.inspect
# p riley # => #<GoodDog:0x0000559be48f22c8 @name="Riley", @age=77>

# # the to_s method is called automatically on the object when we use it with puts or string interpolation

# sparky = GoodDog.new("Sparky", "12 inches", "10 lbs", 3)
# p sparky.what_is_self

class MyCar
  attr_accessor :year, :model, :color
  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
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
    # @ is used because current_speed does not have a getter method
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def to_s
    "My car is a #{color} #{year} #{model}!"
    # In order to access the variables like this, attr_accessor is required
    # Otherwise, you would use @color, @year, @model
  end
end

MyCar.gas_mileage(13, 351) # => "27 miles per gallon of gas"

my_car = MyCar.new("2010", "Ford Focus", "silver")
puts my_car # => "My car is a silver 2010 Ford Focus!"

# Note: the "puts" calls "to_s" automatically