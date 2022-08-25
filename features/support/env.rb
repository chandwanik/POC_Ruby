require "rubygems"
require "watir"
require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'capybara/cucumber'
require 'selenium-webdriver'



# Capybara.register_driver :chrome do |app|
#   Capybara::Selenium::Driver.new(app,
#                                  :browser => :chrome,
#                                  :driver_path => "C:\\Windows"
#   )
# end




# Capybara.run_server = false
# #Set default driver as Selenium
# Capybara.default_driver = :selenium
# #Set default selector as css
# Capybara.default_selector = :css

# Capybara.register_driver :selenium_chrome do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :chrome, args: ['headless'])
# end
#
# Capybara.default_driver = :selenium_chrome


Before do |scenario|
  # browser  = Watir::Browser.new :chrome
  #
  # $browser = browser
  # $browser.driver.manage.window.maximize

  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app,
                                   :browser => :chrome,
                                   :capabilities => Selenium::WebDriver::Remote::Capabilities.chrome()
    )
  end

  Capybara.app_host = "https://www.google.com"
  Capybara.default_max_wait_time = 20
  Capybara.default_driver = :chrome
  Capybara.default_selector = :css
  puts "*********** Browser open ************"
end


After do |scenario|
  # $browser.close
  puts "*********** Browser close ************"
end