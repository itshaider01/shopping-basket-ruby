require_relative 'spec_helper.rb'
# require 'rspec/autorun'

describe "Test#1 Shopping_basket" do
    it "Shows an Output" do
        reciept = ShoppingBasket.new("book","book",12.49, 1)
        music_cd = Item.new("music CD", "cosmetic",14.99)
        reciept.add_item(music_cd,1)
        chocolate_bar = Item.new("chocolate bar", "food",0.85)
        reciept.add_item(chocolate_bar,1)

        expect(reciept.display).to eq("1, book, 12.49\n1, music CD, 16.49\n1, chocolate bar, 0.85\nSales Taxes: 1.50\nTotal: 29.83")
    end
end  

describe "Test#2 Shopping_basket" do
    it "Shows an Output" do
        reciept = ShoppingBasket.new("imported box of chocolates","food",10.00, 1)
        prefume = Item.new("imported bottle of perfume", "cosmetic",47.50)
        reciept.add_item(prefume,1)

        expect(reciept.display).to eq("1, imported box of chocolates, 10.50\n1, imported bottle of perfume, 54.65\nSales Taxes: 7.65\nTotal: 65.15")
    end
end

describe "Test#3 ShoppingBasket" do
    it "Shows an Output" do
        reciept = ShoppingBasket.new("imported bottle of perfume","cosmetic",27.99, 1)
        perfume = Item.new("bottle of perfume", "cosmetic",18.99)
        reciept.add_item(perfume,1)
        pills = Item.new("packet of headache pills", "medical_product",9.75)
        reciept.add_item(pills,1)
        chocolates = Item.new("imported box of chocolates", "medical_product",11.25)
        reciept.add_item(chocolates,1)

        expect(reciept.display).to eq("1, imported bottle of perfume, 32.19\n1, bottle of perfume, 20.89\n1, packet of headache pills, 9.75\n1, imported box of chocolates, 11.85\nSales Taxes: 6.70\nTotal: 74.68")
    end
end