# Python program for counting sort
 
# The main function that sort the given string arr[] in
# alphabetical order
def countSort(arr)
 
    # The output character array that will have sorted arr    
    output=Array.new(arr.length())
    # Create a count array to store count of inidividul
    # characters and initialize count array as 0
     count=Array.new(256,0)
 
    # For storing the resulting answer since the
    # string is immutable
    ans = Array.new()
 
    # Store count of each character
    for i in 0..arr.length() - 1 do
        count[arr[i].ord] += 1        
    end    
   
 
    # Change count[i] so that count[i] now contains actual
    # position of this character in output array
    for i in 0..255 do
        count[i] += count[i-1]
    end
   
     
    # Build the output character array
    for i in 0..arr.length() -1 do       
        output[count[(arr[i]).ord]-1] = arr[i]
        count[(arr[i]).ord] -= 1
    end   
    puts output 
 
    # Copy the output array to arr, so that arr now
    # contains sorted characters
    for i in 0..arr.length() - 1 do
        ans[i] = output[i]
    end    
    return ans
end  
 
# Driver program to test above function
arr = "geeksforgeeks"
ans = countSort(arr)
puts "Sorted character array is " + ans.join("-")