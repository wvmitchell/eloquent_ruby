gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class Chapter12Test < Minitest::Test
  def setup
    @marcy = Monkey.new
    @candice = Primate.new
  end

  def test_monkey_equal_primate
    skip
    assert @marcy == @candice, "marcy is supposed to equal candice."
  end

  def test_primate_equal_monkey
    skip
    assert @candice == @marcy, "candice is supposed to equal marcy."
  end

  def test_monkeys_are_different
    skip
    jim = Monkey.new
    refute jim==@marcy, "jim does not == marcy"
  end

  def test_monkey_mood_is_right
    skip
    # use === in method to compare mood
    assert @marcy.mood_has?(/spunky/), "mood should include spunky."
  end

  class Monkey
    attr_reader :mood, :memory

    def initialize
      @mood = "spunky"
      @memory = ["banana", "mom", "friend"]
    end
  end

  class Primate
  end

end
