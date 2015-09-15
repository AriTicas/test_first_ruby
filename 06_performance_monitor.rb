
 def measure(times_run=1)
   average =0
   elapsed=0
   times_run.times do
   start_time=Time.now
   yield
   end_time=Time.now
   elapsed=end_time-start_time
   average+=elapsed
  end
   average/times_run
 end