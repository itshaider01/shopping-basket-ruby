require_relative "ShoppingBasket.rb"

reciept = ShoppingBasket.new("imported box of chocolates","food",10.00, 1)
prefume = Item.new("imported bottle of perfume CD", "cosmetic",47.50)
reciept.add_item(prefume,1)

puts "\n"
reciept.displayOut
puts "\n"