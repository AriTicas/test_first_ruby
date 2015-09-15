 class Temperature
    def initialize (hash={})
        @f=hash[:f]
        @c=hash[:c]
    end
    
    def in_fahrenheit
       if(@c.nil?)
       @f
       else
       @f= (@c*(9/5.0))+32
       end
    end
    
    def in_celsius
       if(@f.nil?)
       @c
       else
       @c=(@f-32)*(5/9.0)
       end
    end
   
   def Temperature.from_celsius(temp)
       Temperature.new(:c=>temp)
   end
   
   def Temperature.from_fahrenheit(temp)
       Temperature.new(:f=>temp)
      end
   end
 
  class Celsius < Temperature
   def initialize temp
    super(:c=>temp)
    end
   end

  class Fahrenheit < Temperature
    def initialize temp
    super(:f=>temp)
    end
  end

       
       
       
       
       


