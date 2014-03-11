class Dictionary
    attr_accessor :d

    def initialize
        @d = {}
    end

    def entries
        @d
    end

    def add(input)
        if input.class == String then
            @d.update({input => nil})
        else
            @d.update(input)
        end
    end

    def keywords
        @d.keys.sort
    end

    def definition(key)
        @d[key]
    end

    def include?(word)
        @d.include?(word)
    end

    def find(word)
        result = {}
        if @d.include?(word) then
            return {word => @d[word]}
        else
            @d.each_key { |k| result.update({k => @d[k]}) if k =~ /^#{word}/ }
        end
        result
    end

    def printable
        result = ""
        orderedkeys = @d.keys.sort
        orderedkeys.each { |k| result = result + "[#{k}] \"#{@d[k]}\"\n" }
        result[-1] = ""

        result
        
    end

end



