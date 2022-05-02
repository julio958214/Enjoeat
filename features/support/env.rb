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


BROWSER = ENV.fetch('BROWSER')

  Capybara.register_driver :chorme do |app|
      if BROWSER.eql?('chrome')
      caps = Selenium::WebDriver::Remote::Capabilities.chrome(
        "goog:chromeOptions" => {
          "args" => ["--chrome", "--disable-site-isolation-trials", "--disable-gpu"],
          "excludeSwitches" => ["enable-logging"],
        },
      )
      Capybara::Selenium::Driver.new(app, :browser => :chrome, :capabilities => caps)

    elsif BROWSER.eql?('headless')
      caps = Selenium::WebDriver::Remote::Capabilities.chrome(
        "goog:chromeOptions" => {
          "args" => ["--headless", "--disable-site-isolation-trials", "--disable-gpu"],
          "excludeSwitches" => ["enable-logging"],
        },
      )
      Capybara::Selenium::Driver.new(app, :browser => :chrome, :capabilities => caps)

    elsif BROWSER.eql?('firefox')
      Capybara::Selenium::Driver.new(app, browser: :firefox)
  
    elsif BROWSER.eql?('firefox_headless')
      headless = Selenium::WebDriver::Firefox::Options.new(args: ['--headless'])
      Capybara::Selenium::Driver.new(app, browser: :firefox, capabilities: headless)
  
    elsif BROWSER.eql?('edge')
      edge = Selenium::WebDriver::Edge::Options.new(args: ['--edge'], excludeSwitches: ['enable-logging'])
      Capybara::Selenium::Driver.new(app, browser: :edge, capabilities: edge)
  
    elsif BROWSER.eql?('edge_headless')
      edge = Selenium::WebDriver::Edge::Options.new(args: ['--headless'], excludeSwitches: ['enable-logging'])
      Capybara::Selenium::Driver.new(app, browser: :edge, capabilities: edge)
  end
end


Capybara.configure do
  include RSpec::Matchers
  Capybara.run_server = false
  Capybara.default_driver = :chorme
  Capybara.default_max_wait_time = 10
  Capybara.app_host = "https://enjoeat-sp2.herokuapp.com"
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end

