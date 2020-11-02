 require 'capybara'
 require 'capybara/dsl'
 require 'capybara/rspec/matchers'
 require 'selenium-webdriver'

 #Deixando como global a automação 
 World(Capybara::DSL)
 World(Capybara::RSpecMatchers)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://automacaocombatista.herokuapp.com'
  config.default_max_wait_time = 15

  Capybara.ignore_hidden_elements = false
end
 