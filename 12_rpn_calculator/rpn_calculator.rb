class RPNCalculator
    attr_accessor :arr, :oper, :val

    def initialize
        @arr = []
        @oper = nil
        @val = 0
    end

    def push(num)
        @arr.push(num) 
    end

    def plus
        raise ArgumentError, "calculator is empty" unless @arr.size >= 2
        @val = @arr.pop + @arr.pop
        @arr.push(@val)
    end

    def minus
        raise ArgumentError, "calculator is empty" unless @arr.size >= 2
        sec = @arr.pop
        fir = @arr.pop
        @val = fir - sec
        @arr.push(@val)
    end

    def times
        raise ArgumentError, "calculator is empty" unless @arr.size >= 2
        sec = @arr.pop
        fir = @arr.pop
        @val = fir.to_f * sec.to_f
        @arr.push(@val)
    end

    def divide
        raise ArgumentError, "calculator is empty" unless @arr.size >= 2
        sec = @arr.pop
        fir = @arr.pop
        @val = fir.to_f / sec.to_f
        @arr.push(@val)
    end

    def tokens(input)
        input.split(" ").map { |i| if i =~ /[0-9]/ then i.to_i else i.to_sym end }
    end

    def evaluate(input)
        sent = input.split(" ")
        res = sent.inject([]) do |res, i|
            if i =~ /[0-9]/ then
                res << i.to_i

            else
                sec = res.pop
                fir = res.pop
                case 
                when i == '+' then res << fir.to_f + sec.to_f
                when i == '-' then res << fir.to_f - sec.to_f
                when i == "*" then res << fir.to_f * sec.to_f
                when i == '/' then res << fir.to_f / sec.to_f
                end 
            end
        end
        res[0]
    end

    def value
        @val
    end


end
