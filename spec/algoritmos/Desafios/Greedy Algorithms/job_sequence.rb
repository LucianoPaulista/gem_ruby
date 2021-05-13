# Program to find the maximum profit
# job sequence from a given array
# of jobs with deadlines and profits

# function to schedule the jobs take 2
# arguments array and no of jobs to schedule


def printJobScheduling(arr, t)

	# length of array
	n = arr.length() - 1

	# Sort all jobs according to
	# decreasing order of profit
	for i in 0..n do
		for j in 0..n - i do
			if arr[j][2] < arr[j + 1][2]
				arr[j], arr[j + 1] = arr[j + 1], arr[j]
            end   
        end     
    end
	# To keep track of free time slots
	result = [False] * t

	# To store result (Sequence of jobs)
	job = ['-1'] * t

	# Iterate through all given jobs
	for i in 0..n do

		# Find a free slot for this job
		# (Note that we start from the
		# last possible slot)

        #resolver esse for aqui
		for j in (t - 1, arr[i][1] - 1).min()..-1 do
			# Free slot found
			if result[j] == False
				result[j] = True
				job[j] = arr[i][0]
				break
            end    
        end
    end    
	# print the sequence
	print(job)

end
# Driver COde
arr = [['a', 2, 100], # Job Array
	['b', 1, 19],
	['c', 2, 27],
	['d', 1, 25],
	['e', 3, 15]]


puts("Following is maximum profit sequence of jobs")

# Function Call
printJobScheduling(arr, 3)

# This code is contributed
# by Anubhav Raj Singh
