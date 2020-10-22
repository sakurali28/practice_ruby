module InitializeVehicleable
  def initialize
    @speed = 0
    @direction = 'north'
  end
end

module BrakeVehicleable
  def brake
    @speed = 0
  end
end

module AccelerateVehicleable
  def accelerate
    @speed += 10
  end
end

module TurnVehicleable
  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include InitializeVehicleable, BrakeVehicleable, AccelerateVehicleable, TurnVehicleable
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include InitializeVehicleable, BrakeVehicleable, AccelerateVehicleable, TurnVehicleable
  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
bike = Bike.new
car.honk_horn
bike.ring_bell