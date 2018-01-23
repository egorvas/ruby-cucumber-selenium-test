require 'selenium-webdriver'
require 'cucumber'
require 'require_all'
require 'test/unit/assertions'
include Test::Unit::Assertions

require_all 'lib'

Before do |scenario|
    @browser = Browser.new(ENV['DRIVER'])
    @browser.set_timeout(10)
    @browser.delete_cookies
end

After do |scenario|
    @browser.driver.quit
end
