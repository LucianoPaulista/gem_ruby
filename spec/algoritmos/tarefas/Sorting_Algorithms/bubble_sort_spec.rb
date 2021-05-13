require 'algoritmos/tarefas/Sorting_Algorithms/bubble_sort'
require 'gem_ruby'

RSpec.describe "Bubble Sort" do
  it "Ordenação de Array" do   
    arr = [64, 34, 25, 12, 22, 11, 90]   
    result_array = [11, 12, 22, 25, 34, 64, 90]
    ordenacao = Ordenacao::Bubble_Sort.new   
    result = ordenacao.bubbleSort(arr)
    expect(result).to eq(result_array)  
  end
end  