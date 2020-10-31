require 'rspec'
require 'yaml'
require 'pry'
 require 'capybara/cucumber'
 require 'capybara/poltergeist'
 require 'selenium-webdriver'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://automacaocombatista.herokuapp.com/'
  config.default_max_wait_time = 15

  Capybara.ignore_hidden_elements = false
end
 