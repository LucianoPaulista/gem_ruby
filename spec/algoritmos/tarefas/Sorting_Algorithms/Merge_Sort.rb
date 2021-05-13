# Python program for implementation of MergeSort
def mergeSort(arr)
	if arr.length() > 1 
		# Finding the mid of the array
		mid = arr.length()/2

		# Dividing the array elements
		l = arr[0..mid-1]

		# into 2 halves
		r = arr[mid+1..arr.length()-1]

		# Sorting the first half
		mergeSort(l)

		# Sorting the second half
		mergeSort(r)

		i = j = k = 0

		# Copy data to temp arrays L[] and R[]
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

		# Checking if any element was left
		while i < l.length() do
			arr[k] = l[i]
			i += 1
			k += 1
        end			

		while j < r.length() do
			arr[k] = r[j]
			j += 1
			k += 1
	    end		
end
end
# Code to print the list


def printList(arr)
	for i in 0..arr.length() - 1 do
	puts(arr[i].to_s)
	end
	puts()
end

# Driver Code

	arr = [12, 11, 13, 5, 6, 7]
	puts("Given array is \n")
	puts(arr)
	mergeSort(arr)
	puts("Sorted array is: \n")
	puts(arr)

# This code is contributed by Mayank Khanna
