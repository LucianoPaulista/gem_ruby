require 'algoritmos/tarefas/Searching_Algorithms/linear_search'
require 'gem_ruby'

RSpec.describe "teste" do
  it "Number present in the array" do
    arr = [2, 3, 4, 10, 40]
    x = 10
    result_index = 3;   
    n = arr.length()     
    busca = Busca::Linear_Search.new   
    result = busca.search(arr, n, x);   
    expect(result).to eq(result_index)  
  end
end  