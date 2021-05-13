 
def maximumSum(arr, n, k)
 
    # Modify array K number of times
    for i in 1..k + 1 do 
        min = +2147483647
        index = -1
 
        # Find minimum element in array for
        # current operation and modify it
        # i.e; arr[j] --> -arr[j]
        for j in 0..n-1 do 
            if (arr[j] < min) 
                min = arr[j]            
                index = j
           end     
         end        
 
        # this the condition if we find 0 as
        # minimum element, so it will useless to
        # replace 0 by -(0) for remaining operations
        if (min == 0)
            break
        end
        # Modify element of array
        arr[index] = -arr[index]
 
    end    

    # Calculate sum of array
    sum = 0
    for i in 0..n-1 do
        sum += arr[i]
    end    
    return sum
end    

 
# Driver code
arr = [-2, 0, 5, -1, 2]
k = 4
n = arr.length()
puts (maximumSum(arr, n, k))
 
# This code is contributed by Anant Agarwal.