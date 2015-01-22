Given(/^I have logged in as a admin user with Username "(.*?)" and password "(.*?)"$/) do |username, password|
    login(username, password)

end

Given(/^I navigate to Development environment$/) do
    sleep 5
    click_on "Development"
end

Given(/^I click on Users to add a new user$/) do
    sleep 5
    within('.navbar') do
        click_on "Users"
        sleep 5
    end 
    sleep 3
    page.find(:xpath, "//div[@data-action-name='addUser']").click
    sleep 9
end

Given(/^I enter "(.*?)" , "(.*?)","(.*?)","(.*?)","(.*?)"$/) do |usr_nm, pwd, email, frst_nm, lst_nm|
    fill_in 'user-name', :with =>usr_nm
    sleep 2
    fill_in 'password', :with =>pwd
    sleep 2
    fill_in 'email', :with =>email
    sleep 2
    fill_in 'first-name', :with =>frst_nm
    sleep 2
    fill_in 'last-name', :with =>lst_nm
    sleep 2  
end

When(/^I click on create user$/) do
    click_on "Create User"
    sleep 5
    val = expect(page).to have_content('Auto7')
    #puts val
    sleep 5
        if (val) then
            puts "New user created successfully"
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

 
