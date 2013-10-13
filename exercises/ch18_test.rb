gem 'minitest'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class ExecuteBlockTest < Minitest::Test

  class ExecuteBlock
    attr_accessor :log
    #write code here.
    def initialize
      @log = []
    end
  end

  def test_execute_around
    eb = ExecuteBlock.new
    eb.with_log("Adding") {'hello world' }
    assert_equal [ "Adding Started.", "Adding Succeeded."], eb.log
  end

  class InitBlock
    attr_accessor :name
    #write code here
  end

  def test_passing_a_block_in_initialize
    ib = InitBlock.new { #code }
    assert_equal "Clark Kent", ib.name
  end
end
