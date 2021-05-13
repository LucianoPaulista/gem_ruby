
# This Function handles sorting part of quick sort
# start and end points to first and last element of
# an array respectively
def partition(start, pend, array)
	
	# Initializing pivot's index to start
	pivot_index = start
	pivot = array[pivot_index]
	
	# This loop runs till start pointer crosses
	# end pointer, and when it does we swap the
	# pivot with element on end pointer
	while start < pend
		
		# Increment the start pointer till it finds an
		# element greater than pivot
		while start < array.length() and array[start] <= pivot
			start += 1
        end    
			
		# Decrement the end pointer till it finds an
		# element less than pivot
		while array[pend] > pivot
			pend -= 1
        end    
		
		# If start and end have not crossed each other,
		# swap the numbers on start and end
		if(start < pend)
	    	array[start], array[pend] = array[pend], array[start]
        end    
	end
	# Swap pivot element with element on end pointer.
	# This puts pivot on its correct sorted place.
	array[pend], array[pivot_index] = array[pivot_index], array[pend]
	
	# Returning end pointer to divide the array into 2
	return pend
end   
	
# The main function that implements QuickSort
def quick_sort(start, pend, array)
	
	if (start < pend)
		
		# p is partitioning index, array[p]
		# is at right place
		p = partition(start, pend, array)
		
		# Sort elements before partition
		# and after partition
		quick_sort(start, p - 1, array)
		quick_sort(p + 1, pend, array)
    end    
end    
		
# Driver code
array = [ 10, 7, 8, 9, 1, 5 ]
quick_sort(0, array.length() - 1, array)

puts ("Sorted array: #{array}")