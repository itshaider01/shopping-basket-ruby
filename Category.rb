require_relative "Exemptions.rb"

class Category
    attr_accessor :catname, :exemptions

    def initialize(name,imported)
        @catname= name
        @exemptions = Exemptions.new("food", "book", "medical_product")
    end

    def SetCatNme(name)
        @catname = name
    end


    def GetCatNme
        return @catname
    end
    def checkExemption
        exemption = false
        for name in exemptions.names
            next unless (@catname == name)
            exemption = true
            
            break if(@catname == name)
        end
        return exemption
    end

end