class OnlinerCartPage
  def initialize(driver)
    @driver = driver
  end

  def verify_product_title(item_title)
    assert @driver.find_element(:class, "cart-product-title").
      text.include?(item_title)
  end

end
