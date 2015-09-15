   def add(first_num,second_num)
     first_num + second_num
   end


   def subtract(subtrahend,minuend)
   minuend - subtrahend
   end

  def sum(array)
    sum =0
    array.each do |number|
    sum += number
  end
    sum
  end

  def multiply(* args)
    product=1
    args.each do |number|
    product *= number
  end
    product
  end

  def power(base, exponent)
    exponential_product =base**exponent
    exponential_product
  end


  def factorial(number)
    array = []
  case number
  when  0
   return  0
  when 1
    return 1
  else
   until(number == 1)
     array.push(number)
     number -=1
     end
  end
    product=1
    array.each do |number|
    product*=number
  end
    product
  end