class Array
  def sum
     sum=0
  if (self.empty?)
     sum
  else
  self.each do |element|
     sum+=element
  end
    sum
  end
  end

  def square
     squares=[]
  if (self.empty?)
    []
  else
    self.each do |element|
    squares.push(element*element)
  end
    squares
  end
  end
 
  def square!
    squares=[]
  if (self.empty?)
     []
  else
    self.map! do |element|
    element*element
  end
    self
  end
 end
end