def insert_sort arr
  arr.each_with_index do |el, i|
  	j = i - 1
  	while(j >= 0 and arr[j] > el)
  		arr[j+1] = arr[j]
  		j -= 1
  	end
  	arr[j+1] = el
  end
end

#----------------------------   Test   --------------------------------------
require 'minitest/spec'
require 'minitest/autorun'

describe 'insert_sort' do
  it 'should sort an array' do
    insert_sort([]).must_equal []
    insert_sort([2]).must_equal [2]
    insert_sort([1, 2]).must_equal [1, 2]
    insert_sort([2, 1]).must_equal [1, 2]
    insert_sort([-1, 12, 0]).must_equal [-1, 0, 12]
    insert_sort([8,7,6,5,4,3,2,1]).must_equal [1,2,3,4,5,6,7,8]
  end
end
