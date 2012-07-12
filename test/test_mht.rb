require 'helper'
#require File.join(File.dirname(__FILE__), '../helper')

class TestMht < Test::Unit::TestCase
  def test_generate_remote
    mhtml = MHT::MhtmlGenerator.generate("https://rubygems.org/")
    assert mhtml != ""
  end
  
  def test_generate_local
    mhtml = MHT::MhtmlGenerator.generate("fixtures/index.html")
    assert(mhtml.match('touXAzfbxedaI8CBEZgixpEx0oFD'))
    assert(mhtml.match(/Content-Disposition: inline; filename=test.js\nContent-Type: application\/javascript\nContent-Location: (.*)test.js\nContent-Transfer-Encoding: Base64\nContent-Id: (.*)\n\nZnVuY3Rpb24gdGVzdCgpIHsKCWFsZXJ0KCd0ZXN0Jyk7Cn0=/))
  end
  
  
end
