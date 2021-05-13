require 'algoritmos/tarefas/Searching_Algorithms/jump_search'
require 'gem_ruby'

RSpec.describe "Jump_Search" do
  it "Number present in the array" do   
    arr = [ 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610 ]
    x = 55 
    n = arr.length() 
    result_index = 10   
    busca = Busca::Jump_Search.new   
    result = busca.jumpSearch(arr, x, n);   
    expect(result).to eq(result_index)  
  end
end  