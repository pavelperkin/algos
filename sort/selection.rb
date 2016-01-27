def selection_sort arr
  arr.each_with_index do |el, index|
    min_el = arr.find_index(arr[index..- 1].min)
    arr[index], arr[min_el] = arr[min_el], arr[index]
  end
end

#----------------------------   Test   --------------------------------------
require 'minitest/spec'
require 'minitest/autorun'

describe 'bubble_sort' do
  it 'should sort an array' do
    selection_sort([]).must_equal []
    selection_sort([2]).must_equal [2]
    selection_sort([1, 2]).must_equal [1, 2]
    selection_sort([2, 1]).must_equal [1, 2]
    selection_sort([-1, 12, 0]).must_equal [-1, 0, 12]
    selection_sort([8,7,6,5,4,3,2,1]).must_equal [1,2,3,4,5,6,7,8]
  end
end
