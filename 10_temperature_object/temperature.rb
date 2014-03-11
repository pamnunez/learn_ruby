class Temperature
    attr_accessor :f, :c

    def initialize(init=nil)
        if init == nil then
            @f = 0.0
            @c = 0.0
        else
            @f = init[:f]
            @c = init[:c]
        end
    end

    def in_fahrenheit
        if @f == nil then
            @f = ((@c * 9.0) / 5.0) + 32.0
            @f
        else
            @f
        end
    end

    def in_celsius
        if @c == nil then
            @c = (5.0 * (@f - 32.0)) / 9.0
            @c
        else
            @c
        end
    end
    
    def self.from_celsius(input)
        new :c => input
    end

    def self.from_fahrenheit(input)
        new :f => input
    end
end

puts Temperature.new(:c => 37).in_fahrenheit


