require_relative "Item.rb"

class ShoppingBasket
    attr_accessor :items, :quantity, :total_price

    def initialize(name, category_name, price, quantity)
        @items = [Item.new(name,category_name, price)]
        @total_price = price
        @quantity = [quantity]
    end

    def add_item(item,quantity)
        @items.push(item)
        @quantity.push(quantity)
    end

    def total_sales_tax
        tax = 0
        for item in items
            tax += item.total_tax
        end
        return tax
    end

    def total_price_calc
        price = 0
        i =  0
        for item in items
            price += (item.price)*quantity[i] + item.total_tax
            i+=1
        end
        return price
    end

    def formatted_numbers(number)
        numStr = number.to_s
        numStr =numStr.split('.')
        numStr =numStr[0]+"."+ numStr[1].center(2,'0')
        return numStr
    end

    def display
        i = 0
        output = ""
        for item in items
            output += "#{quantity[i]}, #{item.name}, #{formatted_numbers((item.price+item.total_tax).round(2))}\n"
            i+=1
        end
        output += "Sales Taxes: #{formatted_numbers(total_sales_tax.round(2))}\n"
        output += "Total: #{total_price_calc.round(2)}"
        return output
    end

    def displayOut
    i = 0
    for item in items
        puts "#{quantity[i]}, #{item.name}, #{formatted_numbers(item.price+item.total_tax)}"
        i+=1
    end
    puts "Sales Taxes: #{formatted_numbers(total_sales_tax)}"
    puts "Total: #{total_price_calc}"
    end

end