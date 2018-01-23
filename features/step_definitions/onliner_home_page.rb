Given /^I open the Onliner search page$/ do
    @onliner_home_page = @browser.open_page('https://www.onliner.by/')
    @onliner_home_page.verify_page
end

When /^I search for "(.*?)"$/ do |search_term|
  @onliner_home_page.enter_search(search_term)
end

Then /^I should see the search dialog$/ do
  @onliner_home_page.verify_search_dialog
end

When /^I click on the first search result$/ do
  @onliner_product_page = @onliner_home_page.click_on_the_search_item
end
