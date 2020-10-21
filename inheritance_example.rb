class Vehicle
  attr_reader :speed, :direction
  def initialize
    @speed = input_options[:speed]
    @direction = input_options[:direction]
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_reader :make, :model
  def initialize(input_options)
    @make = input_options [:make]
    @model = input_options [:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

  def print_info
    puts "This is a #{make} #{model}."
  end
end

class Bike < Vehicle
  attr_reader :weight, :type
  def initialize(input_options)
    @weight = input_options [:weight]
    @type = input_options[:type]
  end

  def ring_bell
    puts "Ring ring!"
  end

  def print_info
    puts "This #{type} bike weighs #{weight}."
  end
end

car = Car.new(make: "Honda", model: "Pilot")
bike = Bike.new(weight: "28lbs", type: "tandem")
car.honk_horn
bike.ring_bell
car.print_info
bike.print_info