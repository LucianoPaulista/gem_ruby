require 'algoritmos/tarefas/Sorting_Algorithms/count_sorting'
require 'gem_ruby'

RSpec.describe "Bubble Sort" do
  it "Ordenação de Array" do   
    arr =  "geeksforgeeks"
    result_array = "eeeefggkkorss"
    ordenacao = Ordenacao::Count_Sort.new   
    result = ordenacao.countSort(arr)
    expect(result.join()).to eq(result_array)  
  end
end  