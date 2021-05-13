# array minimization
 
# Function defintion for minCost
def minSum(a)
 
    # find the minimum element of A[]
    min_val = a.min;
 
    # return the answer
    return min_val * ( a.length - 1)
end
    
 
# driver code
a = [7, 2, 3, 4, 5, 6]
puts (minSum(a))