class Friend

    def greeting(*names)
        if names.empty? then
            "Hello!"
        else
           result = "Hello, "
           names.each { |n| result += n }
           result + "!"
        end
    end

end
