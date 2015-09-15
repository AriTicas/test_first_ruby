class RPNCalculator
    attr_accessor :value , :array_stack,:value_2
    
    def initialize
        @value=0
        @array_stack=[]
        @value_2=0
    end
    
    def push number
        if (@value>0)
         @value_2=@value
        end
         @array_stack.push(number)
    end
    
    def plus
        if(self.error_checker?)
         raise "calculator is empty"
        elsif(@array_stack.size==1)
         @value=self.value+@array_stack.pop
        elsif(array_stack.size>1)
         @value=@array_stack.pop+@array_stack.pop
        else
         @value=@value_2+@value
        end
    end
    
    def minus
        if(self.error_checker?)
        raise "calculator is empty"
        elsif(@array_stack.size==1)
        @value=@array_stack.pop-self.value
        elsif(@array_stack.size>1)
        @value=@array_stack.delete_at(-2) - @array_stack.pop
        else
        @value=@value_2-@value
        end
    end
    
    def times
        if(self.error_checker?)
         raise "calculator is empty"
        elsif(@array_stack.size==1)
         @value=@array_stack.pop * self.value
        elsif(@array_stack.size>1)
         @value=@array_stack.pop*@array_stack.pop
        else
         @value=@value_2*value
        end
    end
    
    def divide
        if(self.error_checker?)
         raise "calculator is empty"
        elsif(@array_stack.size==1)
         @value=@array_stack.pop.to_f/self.value
        elsif(@array_stack.size>1)
         @value=@array_stack.delete_at(-2)/ @array_stack.pop.to_f
        else
         @value=@value_2/@value
        end
    end
    
    def value
        @value
    end
    
    
    
    def error_checker?
       if(@array_stack.empty?&&@value==0)
          true
       else
          false
       end
    end
    
    
    def tokens string
        token_return=[]
        tokens=[]
        tokens=string.split
        tokens.each do |element|
         if(element.to_i==0)
           token_return.push(element.to_sym)
         else
           token_return.push(element.to_i)
         end
         end
       token_return
    end
    
    def evaluate string
        tokenized =[]
        tokenized =tokens(string)
        tokenized.each do |element|
        if (element.instance_of?(Fixnum))
        self.push(element)
        else
          case element
             when :+
             self.plus
             when :-
             self.minus
             when :/
             self.divide
             else
             self.times
             end
          end
        end
        self.value
     end
    end

