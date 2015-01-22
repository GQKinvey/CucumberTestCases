require 'rubygems'
require 'capybara/cucumber'
require  'selenium-webdriver'



module SessionSteps
  def login(username , password)
    #visit login_path unless current_path == login_path
    visit "/"
    fill_in 'ember670', :with =>username
    fill_in 'ember676', :with =>password
    page.save_screenshot('reports/login_screenshot.png')
    embed("login_screenshot.png", "image/png", "SCREENSHOT")
    click_on "Log in"
    
    #visit(current_path)
  end
end

World(Capybara::Node)
World(SessionSteps)

Capybara.ignore_hidden_elements = false
Capybara.default_driver = :selenium
Capybara.app_host = "https://console.kinvey.com"
