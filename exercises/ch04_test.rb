gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class Chapter4Test < Minitest::Test

  def test_creates_a_string_with_a_mix_of_single_and_double_quotes
    # turn the following text into a string without using escape characters:
    # "Hey," he said. "Let's wait for Lulu's mom's "s" train to arrive."
    phrase = # write your code here

    assert_equal phrase, "\"Hey,\" he said. \"Let's wait for Lulu\'s mom\'s \"s\" train to arrive.\""
  end

  def test_it_strips_whitespace_characters
    # make the tests pass using methods on String

    skip
    string = "I like big butts and I cannot lie\n\n"
    method1 = string.#write your code here
    method2 = string.#write your code here
    method3 = string.#write your code here

    assert_equal "I like big butts and I cannot lie\n", method1
    assert_equal "I like big butts and I cannot lie", method2
    assert_equal "I like big butts and I cannot li", method3

  end

end

