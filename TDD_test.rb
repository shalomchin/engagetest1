require 'minitest/autorun'

class RandomTest < Minitest::Test

def test_sort
  assert_equal([], sort([])) 
end

end