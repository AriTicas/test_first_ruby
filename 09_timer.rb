class Timer
  
  def initialize
    @seconds=0
 end

 def seconds=time
   @seconds=time
 end

 def seconds
    @seconds
 end

 def time_string
    time=0
    hours=0
    minutes=0
    seconds=0

   if(@seconds<60)
      seconds=@seconds
      minutes=0
      hours =0
   elsif(@seconds<3600)
     seconds=@seconds%60
     minutes=@seconds/60
     hours=0
   else
    seconds =@seconds%60
    time  =(@seconds-(@seconds%60))/60
    minutes=time%60
    time=time-(time%60)
    hours= time/60
   end
  "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
 end
   
 def padded number
    array=[]
   if(number <=9)
    array.push(0)
    array.push(number)
   else
    array.push(number)
   end
    array.join('')
  end
 end