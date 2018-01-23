class Browser
  attr_reader :driver

  def initialize()
    @driver = start_browser
    delete_cookies
  end

  def delete_cookies
    @driver.manage.delete_all_cookies
  end

  def open_page(url)
    @driver.navigate.to(url)
    OnlinerHomePage.new(@driver)
  end

  def set_timeout(timeout)
    @driver.manage.timeouts.implicit_wait = timeout
  end

  def start_browser
      driver = Selenium::WebDriver.for :chrome
    driver
  end
end
