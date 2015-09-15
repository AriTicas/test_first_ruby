 def bubble_sort array
 puts 5
  i=0
  j=1
  array_unsorted=true
   while(array_unsorted)
    if(array[i]>array[j])
     element=array.delete_at(i)
     array.insert(j,element)
  end
   i=i+1
   j=j+1
 if(j==array.size-1)
   i=0
   j=1
  end
  if(array.last==5)
      array_unsorted=false
   end
  end
   array
 end


