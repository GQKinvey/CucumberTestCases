Given(/^I have logged in as a admin user with Username "(.*?)" and password "(.*?)"$/) do |username, password|
   login(username, password)
end

Given(/^I navigate to Development environment$/) do
   sleep 5
  click_on "Development"
end

Given(/^I click on Users$/) do
	sleep 5
  	within('.navbar') do
  	click_on "Users"
  	sleep 5
  end	
end

Given(/^I click on Add user$/) do
	
	page.find(:xpath, "//div[@data-action-name='addUser']").click
  	sleep 9
end

Given(/^I enter "(.*?)","(.*?)","(.*?)","(.*?)","(.*?)"$/) do |arg1, arg2, arg3, arg4, arg5|
  fill_in 'user-name', :with =>arg1
  sleep 2
  fill_in 'password', :with =>arg2
  sleep 2
  fill_in 'email', :with =>arg3
  sleep 2
  fill_in 'first-name', :with =>arg4
  sleep 2
  fill_in 'last-name', :with =>arg5
  sleep 2
  
end

When(/^I click on create user$/) do
	click_on "Create User"
  	sleep 5
  	val = expect(page).to have_content('Auto7')
  	puts val
 	sleep 5
  	if (val) then
      puts "New user successfully created"
      puts "------------" 
   else
      puts "New user failed to create"
      puts "------------" 
   end 
   sleep 5
 end

Then(/^new user gets created$/) do

end

Then(/^I click on logout$/) do
	page.find('i.icon-logout').click
	sleep 2
end

 
