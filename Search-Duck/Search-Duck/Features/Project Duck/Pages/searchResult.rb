require 'page-object'
require 'rspec'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'rubygems'
require 'test-unit'
require 'test/unit/assertions'


class SearchResults
  include PageObject
  include Test::Unit::Assertions
  include Selenium::WebDriver::SearchContext


  def results
    @browser.element(:css, 'div>a>h3>span')
  end

  def verify_title(title)
    assert @browser.title.include?(title)
  end

end