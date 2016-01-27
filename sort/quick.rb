def quick_sort arr
  return arr if arr.size < 2
  mediana = arr[arr.size/2]
  left = []
  right = []
  arr.each do |x|
    left << x if x < mediana
    right << x if x > mediana
  end
  quick_sort(left) + [mediana] + quick_sort(right)
end

#----------------------------   Test   --------------------------------------
require 'minitest/spec'
require 'minitest/autorun'

describe 'bubble_sort' do
  it 'should sort an array' do
    quick_sort([]).must_equal []
    quick_sort([2]).must_equal [2]
    quick_sort([1, 2]).must_equal [1, 2]
    quick_sort([2, 1]).must_equal [1, 2]
    quick_sort([-1,12,0]).must_equal [-1, 0, 12]
    quick_sort([8,7,6,5,4,3,2,1]).must_equal [1,2,3,4,5,6,7,8]
  end
end
