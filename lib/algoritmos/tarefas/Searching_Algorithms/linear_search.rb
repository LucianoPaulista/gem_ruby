module Busca
  class Linear_Search
    def search(arr, n, x)    
      for i in 0..n do     
         if arr[i] == x        
            return i   
         break
       end 
      end   
     return - 1;    
   end 
  end 
end 