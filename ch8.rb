gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class Chapter8Test < Minitest::Test

  ## TODO:
  # - fix the class declarations and remove the unnecessary parent class
  # - modify Automobile & Airplane to take in a Brand class, after having
  #   created the necessary Brand class. And then modify the tests to make
  #   them pass, without changing the desired values in the asserts

  class Transportation

    def type
      raise "Not Implemented"
    end

    def type=
      raise "Not Implemented"
    end

    def brand
      raise "Not Implemented"
    end

    def brand=
      raise "Not Implemented"
    end

    def fuel
      raise "Not Implemented"
    end

    def fuel=
      raise "Not Implemented"
    end
  end

  def Airplane < Transportation
    attr_accessor :type, :brand, :fuel
    def initialize(type, brand, fuel)
      @type, @brand, @fuel = type, brand, fuel
    end
  end

  def Automobile < Transportation
    def initialize(type, brand, fuel)
      @type, @brand, @fuel = type, brand, fuel
    end

    def type
      @type.capitalize
    end

    def brand=(value)
      unless available_brands.include?(value)
        @brand = "unknown"
      else
        @brand = value
      end
    end

    def available_brands
      ["GMC", "CHEVY", "FORD"]
    end
  end

  def test_they_respond_to_their_methods
    boeing747 = Airplane.new("747", "Boeing", "jet")
    mustang   = Automobile.new("Mustang", "ford", "gasoline")
    assert_respond_to boeing747, :type
    assert_respond_to mustang,   :type
    assert_respond_to boeing747, :brand=
    assert_respond_to mustang,   :brand=
    assert_respond_to boeing747, :fuel=
    assert_respond_to mustang,   :fuel
  end

  def test_they_return_their_brand
    boeing747 = Airplane.new("747", "Boeing", "jet")
    mustang   = Automobile.new("Mustang", "ford", "gasoline")
    plane_brand_name = "Boeing"
    car_brand_name   = "Ford"
    assert_equal plane_brand_name, boeing747.brand
    assert_equal car_brand_name,   mustang.brand
  end

end
