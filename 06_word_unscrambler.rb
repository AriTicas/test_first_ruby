def word_unscrambler(str,words)
matching_array=[]
matcher=str.split(//).sort
words.each do |word|
    word_match=word.split(//).sort
    if(word_match==matcher)
        matching_array.push(word)
   end
     end
matching_array



end