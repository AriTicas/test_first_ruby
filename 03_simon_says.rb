 def echo(default_word)
   default_word
 end

 def shout(*word_to_shout)
   shouted_words=" "
   word_to_shout.each do |word|
   shouted_words= word.upcase
 end
   shouted_words
 end

 def repeat(word,repeat_times=2)
  Array.new(repeat_times,word).join(" ")
 end

 def start_of_word(word,return_letters=1)
    array=word.split(//)
    if return_letters ==1
    return array[0]
    else
    return array[0..(return_letters-1)].join()
    end
 end

 def first_word(words)
    array=words.split
    return array[0]
 end

 def titleize(title)
    small_words = %w{ the a by on of are over but to the my in I has some for as that is and }
 
    words= title.split
    title_to_return=[]
    words.each do |word|
    if(word==words[0])
      word.capitalize!
      title_to_return.push(word)
    elsif(small_words.include?(word))
      title_to_return.push(word)
    else
      word.capitalize!
      title_to_return.push(word)
      end
    end
        
    return title_to_return.join(" ")
        
end













