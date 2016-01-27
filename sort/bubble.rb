def bubble_sort arr
  arr.each_with_index do |arr_i, i|
    arr.each_with_index do |arr_j, j|
      (arr[i], arr[j] = arr[j], arr[i]) if arr_j > arr_i
    end
  end
end

#----------------------------   Test   --------------------------------------
require 'minitest/spec'
require 'minitest/autorun'

describe 'bubble_sort' do
  it 'should sort an array' do
    bubble_sort([]).must_equal []
    bubble_sort([2]).must_equal [2]
    bubble_sort([1, 2]).must_equal [1, 2]
    bubble_sort([2, 1]).must_equal [1, 2]
    bubble_sort([-1, 12, 0]).must_equal [-1, 0, 12]
    bubble_sort([8,7,6,5,4,3,2,1]).must_equal [1,2,3,4,5,6,7,8]
  end
end
