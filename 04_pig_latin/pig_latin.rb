
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
        break if !consonant?(word[i])
    end
    puts "beginning = #{beginning}"
    beginning
end

def translate(text)
    vowels = ["a", "e", "i", "o", "u"]
    if (vowels.include?(text[0]))
        puts("hit case 1")
        text+"ay"
    else
        beginning = beginning(text)
        index = beginning.size
        puts "text = #{text}"
        if text[index-1] =~ /[A-Z]/
            puts("hit case 2")
            text[index].upcase + text[index+1..-1] + beginning + "ay"
         else
            puts("hit case 3")
            text[index..-1] + beginning.join("") + "ay"
        end
    end
end


translate("apple")
