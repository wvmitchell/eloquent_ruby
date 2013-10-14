gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class Chapter3Test < Minitest::Test

  def test_passing_an_array_of_any_size_to_a_method_with_splat
    # edit the function below this test so the test will pass
    # no matter how many monkeys are passed to it.

    assert return_the_monkeys("monkey", "monkey", "monkey", "monkey", "monkey")
  end

  def return_the_monkeys#write code here()
    args.each do
      return self
    end
  end

  def test_returns_hash_keys_using_each
    # iterate through the hash using each to return an array of just the restaurants

    skip

    restaurant_ratings = {
      mcdonalds: 1,
      the_steakhouse: 4,
      adams_cafe: 5,
      subway: 2
    }

    my_rated_restaurants = []
    restaurant_ratings.each # write code here
    # write code here

    assert my_rated_restaurants.first == "mcdonalds"
  end

end

