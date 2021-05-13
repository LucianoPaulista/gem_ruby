# Knapsack Problem
class ItemValue

	"""Item Value DataClass"""
	def (self, wt, val, ind)
		self.wt = wt
		self.val = val
		self.ind = ind
		self.cost = val 
    end


	def __lt__(self, other)
		return self.cost < other.cost
    end    
end    
# Greedy Approach


class FractionalKnapSack

	"""Time Complexity O(n log n)"""
	@staticmethod
	def getMaxValue(wt, val, capacity)
		"""function to get maximum value """
		iVal = []
		for i in 0..wt.length() - 1 do
	    	iVal.append(ItemValue(wt[i], val[i], i))
        end    

		# sorting items by value
		iVal.sort(reverse=True)

		totalValue = 0
		for i in 0..iVal.length() - 1 do
			curWt = (i.wt).to_i
			curVal = (i.val).to_i
			if capacity - curWt >= 0
				capacity -= curWt
				totalValue += curVal
			elsif
				fraction = capacity / curWt
				totalValue += curVal * fraction
				capacity = (capacity - (curWt * fraction)).to_i
				break
            end    
        end    
		return totalValue


# Driver Code
	wt = [10, 40, 20, 30]
	val = [60, 40, 100, 120]
	capacity = 50

	# Function call
	maxValue = FractionalKnapSack.getMaxValue(wt, val, capacity)
	puts("Maximum value in Knapsack = #{maxValue}")

# This code is contributed by vibhu4agarwal
