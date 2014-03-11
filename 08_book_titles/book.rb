class Book
    attr_accessor :title
    
    def title=(input)
        input.capitalize!
        exceptions = ["the", "a", "an", "and", "in", "of", "to"]
        
        arr = input.split(" ")
        arr.each { |w|
            if !(exceptions.include?(w)) then
                w.capitalize!
            end
        }

        @title = arr.join(" ")
    end
end

