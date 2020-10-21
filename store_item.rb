# item1 = { :type => "apple", :color => "red", :price => 1.5 }
# item2 = { :type => "orange", :color => "orange", :price => 1.25 }
# item3 = { :type => "pear", :color => "green", :price => 1.75 }
# puts "The #{item1[:color]} #{item1[:type]} is #{item1[:price]}."

# item1 = { type: "apple", color: "red", price: 1.5 }
# item2 = { type: "orange", color: "orange", price: 1.25 }
# item3 = { type: "pear", color: "green", price: 1.75 }
# puts "The #{item1[:color]} #{item1[:type]} is #{item1[:price]}."

class Store
  attr_reader :type, :color, :price
  attr_writer :price

  def initialize(input_options)
    @type = input_options[:type]
    @color = input_options[:color]
    @price = input_options[:price]
  end

  def print_info
    puts "The #{color} #{type} is #{price}."
  end
end

class Food < Store
  attr_reader :shelf_life

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end

  def print_info
    puts "The #{color} #{type} is #{price} with a shelf life of #{shelf_life}."
  end

end

item1 = Store.new(type: "apple", color: "red", price: 1.5)
item2 = Store.new(type: "orange", color: "orange", price: 1.25)
item3 = Store.new(type: "pear", color: "green", price: 1.75)
item4 = Food.new(type: "grape", color: "purple", price: 2.25, shelf_life: "5 days")
item1.print_info
item2.print_info
item3.print_info
puts item1.type
puts item1.color
puts item1.price
puts item4.shelf_life
item1.price = 1.8
item4.shelf_life
item4.print_info
