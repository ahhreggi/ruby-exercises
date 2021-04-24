class GoodDog
  # automatically create getter and setter methods
  # instance methods: name, name=, height, height=, weight, weight=
  # instance variables: @name, @height, @weight
  attr_accessor :name, :height, :weight
  # attr_reader :name # create a getter method only
  # attr_writer :name # create a setter method only

  # constructor method
  def initialize(n, h, w)
    @name = n # instance variable
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!" # "name" refers to the instance getter method
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
    # we can use self.name, but it is not required
  end

  # # getter method for @name
  # def name
  #   @name
  # end

  # # setter method for @name
  # def name=(name)
  #   @name = name
  # end
end

# riley = GoodDog.new("Riley", "12 inches", "10 lbs") # instantiation
# puts riley.speak # => "Sparky says arf!"
# puts riley.info
# puts riley.name
# riley.name = "Spartacus"
# puts riley.name

# russell = GoodDog.new("Russell", "24 inches", "45 lbs")
# puts russell.info
# puts russell.speak
# russell.change_info("Russell", "36 inches", "60 lbs")
# puts russell.info

class MyCar
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
end

lumina = MyCar.new(1997, "chevy lumina", "white")
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
lumina.current_speed