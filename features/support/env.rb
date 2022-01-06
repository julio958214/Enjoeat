require "capybara"
require "capybara/cucumber"
require "site_prism"
require "rspec"
require "rufo"
require "selenium-webdriver"
require "allure-cucumber"
require "webdrivers"
require_relative "../pages/restaurantes_page.rb"

World(Actions)

Capybara.register_driver :selenium do |driver|
  Capybara::Selenium::Driver.new(driver, :browser => :chrome)
end

Capybara.configure do
  include RSpec::Matchers
  Capybara.run_server = false
  Capybara.default_driver = :selenium_chrome_headless
  Capybara.page.driver.browser.manage.window.maximize
  Capybara.default_max_wait_time = 10
  Capybara.app_host = "https://enjoeat-sp2.herokuapp.com"
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
