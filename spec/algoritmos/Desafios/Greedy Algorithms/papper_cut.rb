# number of squares to cut a paper.

# Returns min number of squares needed
def minimumSquare(a, b)

	result = 0
	rem = 0

	# swap if a is small size side .
	if (a < b)
		a, b = b, a
	end	

	# Iterate until small size side is
	# greater then 0
	while (b > 0)
	
		# Update result
		
		result += (a / b)

		rem = (a % b)
		a = b
		b = rem
    end	
	return result
end


# Driver code
n = 13
m = 29

puts(minimumSquare(n, m))

# This code is contributed by
# Smitha Dinesh Semwal
