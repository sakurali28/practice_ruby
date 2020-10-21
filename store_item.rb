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

item1 = Store.new({type: "apple", color: "red", price: 1.5})
item2 = Store.new(type: "orange", color: "orange", price: 1.25)
item3 = Store.new(type: "pear", color: "green", price: 1.75)
item1.print_info
item2.print_info
item3.print_info
puts item1.type
puts item1.color
puts item1.price
item1.price = 1.8
item1.print_info