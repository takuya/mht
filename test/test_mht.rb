require 'helper'

class TestMht < Test::Unit::TestCase
  def test_generate
    mhtml = MHT::MhtmlGenerator.generate("https://rubygems.org/")
    assert mhtml != ""
  end
end
