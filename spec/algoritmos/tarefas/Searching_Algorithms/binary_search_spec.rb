require 'algoritmos/tarefas/Searching_Algorithms/binary_search'
require 'gem_ruby'

RSpec.describe "Binary_Search" do
  it "Number present in the array" do   
    arr = [ 2, 3, 4, 10, 40 ]
    x = 10  
    result_index = 3   
    busca = Busca::Binary_Search.new   
    result = busca.binarySearch(arr, 0, arr.length()-1, x)
    expect(result).to eq(result_index)  
  end
end  