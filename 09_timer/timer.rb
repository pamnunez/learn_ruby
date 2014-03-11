class Timer
    attr_accessor :seconds

    def initialize
        @seconds = 0
    end

    def seconds=(input)
        @seconds = input
    end

    def padded(input)
        if input < 10 then
            "0"+input.to_s
        else
            input.to_s
        end
    end

    def time_string()
        hrs = @seconds / 3600
        mins = @seconds % 3600
        secs = mins % 60
        mins = mins / 60
        
        padded(hrs) + ":" + padded(mins) + ":" + padded(secs)
    end

end
