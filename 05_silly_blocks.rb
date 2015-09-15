def reverser
    words = yield.split(" ")
    return_array = []
    words.each do |word|
    return_array.push(word.reverse)
    end
   return_array.join(" ")
end

def adder(addee=1)
    number = yield
    number = number + addee;
end

def repeater(repeat=1)
   yield
   (repeat-1).times do
   yield
   end
end

    
    
    
    
    


