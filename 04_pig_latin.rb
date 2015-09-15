 def translate(word)
    vowels = %w{ a e i o u }
    punctuations=%w{ ! ? ( ) , .}
    words_array=word.split
    return_string =''
    beg_punc=''
    inserter=''
    words_array.each do |word|
    boolean=false
    ender=false
    ending=''
    beg_punc=''
    end_punc=''
    array=word.split(//)
    
    if(punctuations.include?(array[0]))
        beg_punc=array.delete_at(0)
        boolean=true
    end
    while(punctuations.include?(array[-1]))
        end_punc.insert(0,(array.delete_at(-1)))
        ender=true
    end
    
    while(!vowels.include?(array[0]))
        letter=array.delete_at(0)
        ending<<letter
        if(letter+array[0]=="qu"||letter+array[0]=="Qu")
          letter=array.delete_at(0)
          ending<<letter
        end
        if(array[0]=="y")
          break
        end
    end
      array.push(ending)
      array.push('ay')
    if(ender)
      array.push(end_punc)
    end
      word=array.join('')
    if(word==word.downcase)
      return_string<< word
    elsif(boolean)
      word = word.downcase.capitalize
      word.insert(0,beg_punc)
      return_string<<word
    else
      return_string<< word.downcase.capitalize
    end
     if(words_array.size>1)
      return_string << ' '
     end
    end
      return_string.rstrip
  end