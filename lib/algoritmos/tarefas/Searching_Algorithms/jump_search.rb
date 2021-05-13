include Math;
module Busca
  class Jump_Search
    def jumpSearch( arr , x , n )	 
    step = Math.sqrt(n)            
    prev = 0
    while (arr[([step, n].min)-1] < x) do
      prev = step
      step += Math.sqrt(n)
      if prev >= n
        return -1
      end 
    end    
        
   
    # Doing a linear search for x in
        # block beginning with prev.
    while arr[prev] < x do
      prev += 1        
       # If we reached next block or end
       # of array, element is not present.
      if prev ==  [step, n].min
        return -1
      end          
    end           
        # If element is found
    if arr[prev] == x
      return prev
     end	
   return -1   
 end   
 end
end