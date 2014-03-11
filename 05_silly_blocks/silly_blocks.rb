def reverser
    input = yield.split(" ")
    result = input.collect { |w| w.reverse }
    result.join(" ")
end

def adder(*num, &block)
    if num.size == 0
        block.call + 1
    else
        block.call + num[0]
    end
end

def repeater(*num)
    if num.size == 0
        yield
    else
        num[0].times { yield }
    end
end

