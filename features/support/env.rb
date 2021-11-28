require "capybara"
require "capybara/cucumber"
require "site_prism"
require "rspec"
require "rufo"
require "allure-cucumber"
require_relative "../pages/restaurantes_page.rb"

World(Actions)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "https://enjoeat-sp2.herokuapp.com"
  config.default_max_wait_time = 30
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end