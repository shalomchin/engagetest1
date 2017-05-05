require 'minitest/autorun'

class RandomTest < Minitest::Test

  def sort(array)
    (array.length-1).times do |a|
      i = 0
      n = array.length-2

      begin
        if array == [] || array == [1]
          break
        elsif array[i] > array[i+1] then

          array[i], array[i+1] = array[i+1], array[i]

          next

        end

        i+= 1
      end until i > n
    end
    print array
    return array
  end


  def test_sort
    assert_equal([], sort([]))
    assert_equal([1], sort([1]))
    assert_equal([1,2], sort([2,1]))
    assert_equal([1,2,3], sort([1,2,3]))
    assert_equal([1,2,3], sort([2,1,3]))
    assert_equal([1,2,3], sort([1,3,2]))
  end

end
