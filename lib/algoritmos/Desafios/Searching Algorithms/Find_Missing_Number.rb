def getMissingNo(a)
	n = a.length()
	total = (n + 1)*(n + 2)/2
	sum_of_A = a.inject(:+)
	return total - sum_of_A
end

a = [1, 2, 4, 5, 6]
puts  getMissingNo(a)