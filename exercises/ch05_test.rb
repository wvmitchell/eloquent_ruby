gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class Chapter5Test < Minitest::Test

  # some additional resources for learning
  #  http://regexcrossword.com/
  #  http://rubular.com/

  def test_it_selects_only_edu_emails
    emails = ["doublesecretprobation@gschool.edu", "jeff@jumpstart.com", "@bigtown.edu"]
    # write code here to select only emails that have a '.edu' domain
    assert 2, edu_emails.count
  end

  def test_it_selects_only_valid_edu_emails
    emails = ["doublesecretprobation@gschool.edu", "jeff@jumpstart.com", "@bigtown.edu"]
    # write code here to select only valid emails that have a '.edu' domain
    assert 1, edu_emails.count
  end

end
