require_relative "Category.rb"

class Item
    attr_accessor :name, :price, :total_tax, :category, :imported

    def initialize(name, category_name, price)
        @name = name
        @price = price
        @imported = checkImported(name)
        @category = Category.new(category_name,imported)
        @total_tax =calculate_tax
    end
    def calculate_tax
        caltax = (getTax*price)/100
        roundCalTax = (caltax*2).round(1)/2
        if(roundCalTax < caltax)
            roundCalTax+=0.05
        end
        return roundCalTax
    end 

    def checkImported(name)
        if(name.include?("imported"))
            return true
        else
            return false
        end
    end
    

    def getTax
        return ((category.checkExemption) ? 0:10) +  ((imported) ? 5:0).to_i
    end

end    