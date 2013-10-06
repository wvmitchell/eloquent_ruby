gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class Chapter6Test < Minitest::Test

  def test_it_is_using_symbols_and_not_lazy_strings
    a = :all
    # write code here to make the tests pass
    b = 
    c = 
    assert_equal a, b
    assert_equal b, c
  end

  def test_it_is_using_strings_and_the_same_strings_are_not_equal
    a = "all"
    # write code here to make the tests pass
    b = 
    c = 
    assert_equal a, b
    assert_equal b, c
  end

  def test_it_has_a_hash_with_correct_type_of_key
    hash_symbol = [:big_foot => "scary", :locky => "slipper", :jolly_green => "giant"]
    hash_string = ["big_foot" => "scariest", "locky" => "slippery", "jolly_green" => "giant"]
    # write code here to make the tests pass
    result_symbol = 
    result_string = 
    assert_equal "scary", result_symbol
    assert_equal "slippery", result_string
  end

end
