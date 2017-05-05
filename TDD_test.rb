require 'minitest/autorun'

class RandomTest < Minitest::Test

def sort(array)
  i = 0
  until i > array.length-2 do
    
    if array[i] > array[i+1] then
    #if not sorted, must sort
    array[i], array[i+1] = array[i+1], array[i]
      print array  
    else
      break
    end
    i +=1
  end
  # print array
  return array
end


  def test_sort
    assert_equal([], sort([]))
    assert_equal([1], sort([1]))
    assert_equal([1,2], sort([2,1]))
  end

end
