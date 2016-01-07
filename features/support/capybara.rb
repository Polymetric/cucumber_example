require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :ie do |app|
  Capybara::Selenium::Driver.new(app,
    :browser => :remote,
    :url => "http://192.168.56.101:4444/wd/hub",
    :desired_capabilities => :internet_explorer)
end

Capybara.register_driver :edge do |app|
  Capybara::Selenium::Driver.new(app,
    :browser => :remote,
    :url => "http://192.168.56.101:4444/wd/hub",
    :desired_capabilities => :edge)
end

Capybara.default_driver = :ie
