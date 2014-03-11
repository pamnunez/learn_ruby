def measure(*num)
    if num.empty? then
        init = Time.now()
        yield
        final = Time.now()
        final - init
    else
        times = []
        num[0].times do
            init = Time.now()
            yield
            final = Time.now()
            times << (final - init)
        end
        total = 0.0
        times.each { |i| total += i }
        total / times.size
        
    end
end

