a = [64, 25, 12, 22, 11]
  
# Traverse through all array elements
for i in 0..a.length()- 1 do       
    # Find the minimum element in remaining 
    # unsorted array
    min_idx = i
    for j in i+1..a.length()- 1 do
        if a[min_idx] > a[j]
            min_idx = j
         end        
    end              
    # Swap the found minimum element with 
    # the first element        
    a[i], a[min_idx] = a[min_idx], a[i]
 end    
  
# Driver code to test above
puts ("Sorted array")
for i in 0..a.length() - 1 do
    puts ("%d " %a[i])
end    
    