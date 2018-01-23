class OnlinerHomePage
  def initialize(driver)
    @driver = driver
  end

  def enter_search(search_term)
    input = @driver.find_element(:class => 'fast-search__input')
    input.send_keys(search_term)
    input.send_keys(:enter)
  end

  def click_on_the_search_item
    @driver.find_element(:class => 'product__title-link').click
    OnlinerProductPage.new(@driver)
  end

  def verify_page
    assert @driver.find_element(:id => 'container').displayed?
  end

  def verify_search_dialog
    @driver.switch_to.frame @driver.find_element(:class, 'modal-iframe')
    assert @driver.find_element(:class => 'result__wrapper').displayed?
  end
end
