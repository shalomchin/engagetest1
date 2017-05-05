require 'minitest/autorun'

class RandomTest < Minitest::Test

  def sort(array)
    # this is to re-iterate through the array several times so that the values in the array will be fully sorted.
    (array.length-1).times do |a|
      i = 0
      # we use array.length-2 because we have nothing to compare array.last since it is the last value in the array. 
      n = array.length-2
      # This is a loop
      begin
        # if the array is [] or [1], it will return the same array.
        if array == [] || array == [1]
          break
          # for other type of array, we will test if any number in the array is not in the right order.
          # this is done by comparing the value in the current position to the value in the next position.
          # if it detects that the value in that position is more than the value in the next position,
          # it will switch the value in the current position with the value in the next position
        elsif array[i] > array[i+1] then
          # this code below does the switch
          array[i], array[i+1] = array[i+1], array[i]
          # we continue to loop through each value in the array even after the switch. 
          next
        end

        i+= 1
      end until i > n
    end
    #print array
    return array
  end


  def test_sort
    # test case 1
    assert_equal([], sort([]))
    # test case 2
    assert_equal([1], sort([1]))
    # test case 3
    assert_equal([1,2], sort([2,1]))
    # next two test are not important but placed here.
    assert_equal([1,2,3], sort([1,2,3]))
    assert_equal([1,2,3], sort([2,1,3]))
    # test case 4
    assert_equal([1,2,3], sort([1,3,2]))
    # The next case to test is those below. We will run 3 more test.
    # test case 5
    assert_equal([1,2,3], sort([2,3,1]))
    assert_equal([1,2,3], sort([3,1,2]))
    assert_equal([1,2,3], sort([3,2,1]))
    
    # future test cases. We use permutation to test all future unsorted arrays.
    def test_any_array(array)
      p = array.permutation.to_a
      i = 0
      num = p.length
      while i < num do
          assert_equal(array, sort(p[i]))
          i +=1
      end
    end
    # add the value of array in test_any_array() below,  
    # for example, test_any_array[1,2,3,4] to test all the potential permutations of [1,2,3,4]
    test_any_array([1,2,3,4])

  end

end


