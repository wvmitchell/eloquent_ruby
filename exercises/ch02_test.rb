gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class Chapter2Test < Minitest::Test

  def test_refactors_if_not_to_unless
    # refactor the following code into one line on the line that starts with 'written'

    given = if 1 + 1 != 3
      "foo"
    end

    written = # write code here

    assert_equal given, written
  end

  def test_refactors_while_not_to_until
    skip

    foo_collection = []
    count = 0

    # refactor the following code to use an until loop
    while count < 10
      foo_collection << "foo"
      count += 1
    end

    assert foo_collection.length == 10
  end

end

