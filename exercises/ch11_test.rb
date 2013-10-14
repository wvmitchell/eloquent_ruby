gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class Chapter11Test < Minitest::Test

  def setup
    @joe = Monkey.new
  end

  def test_plus_sign_operator_on_Monkey_works
    skip
    mandy = Monkey.new
    assert_equal "trouble", @joe+mandy
  end

  def test_unary_symbol_works
    skip
    !@joe
    assert_equal "excited", @joe.mood
  end

  def test_get_monkeys_memory
    skip
    assert_equal "friend", @joe[2]
  end

  def test_add_to_monkeys_memory
    skip
    @joe[3] = "climb"
    assert_equal "climb", @joe[3]
  end

  class Monkey

    attr_reader :mood, :memory

    def initialize
      @mood = "normal"
      @memory = [ "banana", "mom", "friend"]
    end

  end

end
