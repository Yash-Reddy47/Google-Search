require_relative '../Pages/Search'

Given(/^I have a google page opened$/) do
  @google_page = Search.new(@browser)
  @google_page.visit
end

When(/^I search for '(.*)' in the search box$/) do |input|
  @google_page.enter_word(input)
  @google_page.click_search
end

Then(/^The page should contain tile as '(.*)'$/) do |input|
  @search_result = results.new(@browser)
  @search_result.verify_title(input)
end

