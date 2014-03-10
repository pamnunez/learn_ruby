
def uppercase?(letter)
    (/[[:lower]]/.match(letter) == nil) ? true : false
end

def consonant?(letter)
    letter =~ /[B-DF-HJ-NP-TV-Zb-df-hj-np-tv-z]/

end

def beginning(word)
    i = 0
    beginning = []
    loop do 
        beginning << word[i]
        i+=1
        beginning << word[i] if word[i-1] == "q"
        break if !consonant?(word[i])
    end
    beginning
end

def translate(text)
    input = text.split(" ")
    result = []
    input.each do |word|
        vowels = ["a", "e", "i", "o", "u"]
        if (vowels.include?(word[0]))
            result << word+"ay"
        else
            beginning = beginning(word)
            index = beginning.size
            if word[index-1] =~ /[A-Z]/
                result << word[index].upcase + word[index+1..-1] + beginning + "ay"
            else
                result << word[index..-1] + beginning.join("") + "ay"
            end
        end

    end
    result.join(" ")
end

