gem 'minitest'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './ch10'

class NumbersTest < Minitest::Test

  def test_it_does_its_thang
    numbers = Numbers.new
    assert_equal [], numbers.values
    numbers.create(1..20)
    assert_equal (1..20).to_a, numbers.values
    numbers.divisible_by
    results = [2,4,6,8,10,12,14,16,18,20]
    assert_equal results, numbers.values
    numbers.division_three
    results = [3,6,9,12,15,18]
    assert_equal results, numbers.values
  end


end
