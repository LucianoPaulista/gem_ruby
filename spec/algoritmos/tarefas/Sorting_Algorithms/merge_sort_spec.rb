require 'algoritmos/tarefas/Sorting_Algorithms/merge_sort'
require 'gem_ruby'

RSpec.describe "Merge Sort" do
  it "Ordenação de Array" do       
	arr = [12, 11, 13, 5, 6, 7]
    result_array = [5, 6, 7, 11, 12, 13]
    ordenacao = Ordenacao::Merge_Sort.new   
    result = ordenacao.printList(arr)
    expect(result).to eq(result_array)  
  end
end  