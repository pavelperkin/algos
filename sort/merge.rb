def merge_sort arr
  return arr if arr.empty?
  return arr if arr.size == 1
  left, right = arr[0...arr.size/2], arr[arr.size/2..-1]
  merge(merge_sort(left), merge_sort(right))
end

def merge arr1, arr2, res=[]
  (arr1.size + arr2.size).times do
    if arr1.empty?
      res << arr2 and return res.flatten
    elsif arr2.empty?
      res << arr1 and return res.flatten
    elsif arr1.first > arr2.first
      res << arr2.shift
    else
      res << arr1.shift
    end
  end
end

#----------------------------   Test   --------------------------------------
require 'minitest/spec'
require 'minitest/autorun'

describe 'merge_sort' do
  it 'should sort an array' do
    merge_sort([]).must_equal []
    merge_sort([2]).must_equal [2]
    merge_sort([1, 2]).must_equal [1, 2]
    merge_sort([2, 1]).must_equal [1, 2]
    merge_sort([-1, 12, 0]).must_equal [-1, 0, 12]
    merge_sort([8,7,6,5,5,3,2,1]).must_equal [1,2,3,5,5,6,7,8]
  end
end
