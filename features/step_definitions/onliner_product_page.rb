When /^I add item to the cart$/ do
  @onliner_product_page.add_item_to_cart
end

And /^open my cart page$/ do
  @onliner_cart_page = @onliner_product_page.open_cart_page
end

Then /^item page should be opened$/ do
  @onliner_product_page.verify_page
end

Then /^I should validate table$/ do
  @onliner_product_page.verify_table
end

And /^screen size should be "(.*?)"$/ do |screen_size|
  @onliner_product_page.assert_screen_size(screen_size)
end

And /^quantity based matrix size should be "(.*?)"$/ do |quantity_based_matrix_size|
  @onliner_product_page.assert_quantity_based_matrix_size(quantity_based_matrix_size)
end

And /^physical based matrix size should be "(.*?)"$/ do |physical_based_matrix_size|
  @onliner_product_page.assert_physical_based_matrix_size(physical_based_matrix_size)
end
