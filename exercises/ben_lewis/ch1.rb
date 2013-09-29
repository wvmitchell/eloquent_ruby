gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class Chapter1Test < Minitest::Test

  def test_uses_snake_case_for_variables
    # write a variable name of at least two words in snake case
    # replace all variable references below with the new variable name

    skip
    # (variable) = test_var
    assert variable[0] == variable[0].upcase
    assert variable.include?("_")
  end

  def test_uses_camel_case_for_classes
    # write a new class name of at least two words in camel case
    # replace all class references at the bottom of this document with the new class name

    skip
    class_name = (new class).return_name
    assert_equal class_name.to_s[0], class_name.to_s[0].downcase
    refute variable.include?("_", " ")
  end

end

class (new class)
  def self.return_name
    self
  end
end

