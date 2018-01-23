class OnlinerProductPage
  def initialize(driver)
    @driver = driver
  end

  def verify_page
    assert @driver.find_element(:class => 'product-header').displayed?
  end

  def assert_screen_size(screen_size)
    assert @driver.find_element(:xpath,
       "//*[@id='specs']/div[2]/div/table/tbody[2]/tr[5]/td[2]").text.include?(screen_size)
  end

  def assert_quantity_based_matrix_size(quantity_based_matrix_size)
    assert @driver.find_element(:css,
       "div#specs tbody:nth-child(3) > tr:nth-child(6) > td:nth-child(2) > span").text.include?(quantity_based_matrix_size)
  end

  def assert_physical_based_matrix_size(physical_based_matrix_size)
    assert @driver.find_element(:css,
       "div#specs tbody:nth-child(3) > tr:nth-child(7) > td:nth-child(2) > span").text.include?(physical_based_matrix_size)
  end

  def add_item_to_cart
    @driver.find_element(:class, "product-aside__item-button").click
  end

  def open_cart_page
    @driver.find_element(:class, "product-aside__item-button").click
    OnlinerCartPage.new(@driver)
  end

end
