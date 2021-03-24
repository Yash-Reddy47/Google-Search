require 'page-object'

class Search
  include PageObject

  text_field(:box, name: 'q')
  button(:search, value: 'Google Search')

  def visit
    @browser.goto 'http://www.google.com'
  end

  def enter_word(key)
    self.box = key
  end

  def click_search
    search
  end

  def close
    @browser.close
  end
end