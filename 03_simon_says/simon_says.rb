def echo(text)
   text 
end

def shout(text)
    text.upcase
end

def repeat(*input)
    if input[1] == nil
        input[0] + " " + input[0]
    else
        ((input[0]+" ")*(input[1]-1)) + input[0]
    end
end

def start_of_word(word, num)
   word[0, num]
end

def first_word(text)
    text[/\w+/]
end

def titleize(text)
    shorts = ["and", "over", "the"]
    text_arr = text.split(" ").each do |w| 
            w.capitalize! unless shorts.include?(w)
    end
    text_arr[0].capitalize!
    text_arr.join(" ")
end


