class Book
  def title=(title)
   dont_cap= %w{and in the of a an to}
   words=title.capitalize.split
    words.each do |word|
  if(!dont_cap.include?(word))
    word.capitalize!
  end
  end
   @title=words.join' '
  end
 
  def title
   @title
  end
        
end