gem 'minitest'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class SaveBlockTest < Minitest::Test

  class PassBlockMethod
  #write code here
  end

  def test_class_pass_block_method_returns_block
    pbm =  PassBlockMethod.new
    assert_equal 4, pbm.some_method { |method| 2 + 2 }
  end

  def test_lambda_matches_30
   calc =  lambda  { #write code here
   }
     assert_equal 30, calc.call
  end
end
