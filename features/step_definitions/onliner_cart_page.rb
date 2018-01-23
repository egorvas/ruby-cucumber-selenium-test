Then /^I should be able to see "(.*?)" in my cart$/ do |item_title|
  @onliner_cart_page.verify_product_title(item_title)
end
