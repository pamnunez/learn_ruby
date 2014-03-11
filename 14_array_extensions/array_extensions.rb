class Array
 
    def sum
        if self == nil then 0 else
            self.inject(0) { |sum, i| sum + i }
        end
    end

    def square
        result = []
        if self == nil then
            result
        else
            self.each { |i| result << i*i }
        end
        result 
    end

    def square!
        self.map! { |i| i = i * i }
    end


end
