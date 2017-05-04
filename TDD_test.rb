require 'minitest/autorun'

class RandomTest < Minitest::Test

  def sort(array)
    if array == []
      return array
    end
  end

  def test_sort
  
    assert_equal([], sort([]))
  end

end
