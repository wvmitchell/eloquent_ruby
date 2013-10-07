gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class Chapter7Test < Minitest::Test

  # some additional resources for learning
  # Public/Private/Protected Methods
  ## http://tenderlovemaking.com/2012/09/07/protected-methods-and-ruby-2-0.html

  ## TODO:
  # - create a 'Person' class that takes in 2 arguments, a first name
  #   and last name.
  # - create a method that spits out the person's full name, but it has to be
  #   a private method
  # - create a method that spits out the person's full name, upcased (shouting)
  #   but it has to be a protected method

  class Male < Person
    def initialize
      # i take no arguments
    end

    def evaluate_private_method(person)
      person.full_name
    end

    def evaluate_protected_method(person)
      person.shouting_name
    end
  end

  def test_it_errors_out_when_calling_a_private_method
    bob = Person.new("Robert", "Smith")
    refute_respond_to bob, #FILL ME IN
  end

  def test_you_can_still_call_private_methods_with_#finish me
    bob       = Person.new("Robert", "Smith")
    full_name = "Robert Smith"
    assert_equal full_name, # FILL ME IN
  end

  def test_you_CANNOT_call_private_methods_on_parent_objects_from_child
    bob  = Person.new("Robert", "Smith")
    male = Male.new
    assert_raises(NoMethodError) { # FILL ME IN }
  end

  def test_you_CAN_call_protected_methods_on_parent_objects_from_child
    bob           = Person.new("Robert", "Smith")
    male          = Male.new
    shouting_name = "ROBERT SMITH"
    assert_equal shouting_name, # FILL ME IN
  end

  def test_it_is_a_child_of_the_object_class
    bob = Person.new("Robert", "Smith")
    assert_kind_of Object, # FILL ME IN
  end

  def test_it_inherits_methods_from_the_object_class
    bob = Person.new("Robert", "Smith")
    superclass_methods = bob.class.superclass.public_methods
    assert_equal superclass_methods, # FILL ME IN
  end

end
