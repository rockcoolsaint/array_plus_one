require "./task"
require "test/unit"
 
class TestArrayPlusOne < Test::Unit::TestCase

  def test_array_valid_values
    assert_equal(array_plus_1([2,3,9]), [2,4,0])
    assert_equal(array_plus_1([2,9,9]), [3,0,0])
    assert_equal(array_plus_1([2,9]), [3,0])
  end

  def test_for_nil
    assert_equal(array_plus_1([2,3,-2]), nil)
    assert_equal(array_plus_1([-2,3,2]), nil)
    assert_equal(array_plus_1([2,-3,2]), nil)
    assert_equal(array_plus_1([-2,3]), nil)
    assert_equal(array_plus_1([2,13]), nil)
    assert_equal(array_plus_1(['a',3]), nil)
  end

end