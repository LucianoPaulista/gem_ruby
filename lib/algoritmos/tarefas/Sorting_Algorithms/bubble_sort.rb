module Ordenacao
  class Bubble_Sort
    def bubbleSort(arr)
    index = 0  
    while index < arr.length() - 1 do
      if arr[index] > arr[index+1]
        arr[index], arr[index+1] = arr[index+1], arr[index]
        index = 0
      else
        index += 1
      end
    end 
    return arr
   end
  end
end  
