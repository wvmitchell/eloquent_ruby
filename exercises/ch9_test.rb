gem 'minitest'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AssertionTest < Minitest::Test
  def test_a_specific_value
    # Write code here to satisfy "assert" and "refute"
    assert numbers.include? 2
    refute numbers.include? 3
  end

  def test_equal_condition
    # Write code here to satisfy the "assert_equal" and "refute_equal" conditions
    assert_equal 0, numbers[0]
    refute_equal 0, numbers[1]
  end

  def test_nil_condition
   # Write code here to satisfy the "assert_nil" condition
    assert_nil numbers
  end

  def test_with_operator
    # Write code here to satisfy the "assert_operator" condition
    assert_operator 10, :<, value
  end

end

