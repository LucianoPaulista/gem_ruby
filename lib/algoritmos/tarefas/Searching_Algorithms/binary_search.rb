module Busca 
  class Binary_Search  
    def binarySearch (arr, l, r, x)     
      if r >= l  
        mid = l + (r - l) / 2          
        if arr[mid] == x
            return mid                
        elif arr[mid] > x
            return binarySearch(arr, l, mid-1, x)          
        else
            return binarySearch(arr, mid + 1, r, x)
        end
      else            
        return -1
     end      
   end  
  end
end   