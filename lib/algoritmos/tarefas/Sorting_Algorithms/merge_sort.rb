module Ordenacao
  class Merge_Sort
    def mergeSort(arr)
	if arr.length() > 1 		
		mid = arr.length()/2		
		l = arr[0..mid-1]	
		r = arr[mid+1..arr.length()-1]		
		mergeSort(l)		
		mergeSort(r)
		i = j = k = 0	
		while i < l.length() and j < r.length() do
		if l[i] < r[j]
		  arr[k] = l[i]
	    	i += 1
		else
		 arr[k] = r[j]
		end			
			j += 1
			k += 1
		end
		
		while i < l.length() do
			arr[k] = l[i]
			i += 1
			k += 1
        end			

		while j < r.length() 
			arr[k] = r[j]
			j += 1
			k += 1
	    end		
     end
   end     
   def printList(arr)
     mergeSort(arr)
   return arr 
  end
end
end
