require 'minitest/autorun'

class RandomTest < Minitest::Test

  def sort(array)
    if array == [] || array = [1]
      return array
    end
  end

  def test_sort
    assert_equal([], sort([]))
    assert_equal([1], sort([1])) 
    assert_equal([1,2], sort([2,1]))
  end

end
