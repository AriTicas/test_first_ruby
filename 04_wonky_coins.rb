 def wonky_coins(n)

 array=[]
 n1=n/2
 n2=n/3
 n3=n/4
 array.push(n1,n2,n3)
   i=0
   temp_array=[]
  until (array.flatten.first==0)
      first1=array.first
         if(first>0)
     temp_array.push(first1/2,first1/3,first1/4)
      array.push(temp_array)
      array.delete_at(i)
      temp_array.clear
      end
         end
      puts array.size
end

wonky_coins(5)