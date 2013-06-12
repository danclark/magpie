require "test_helper"

feature 'Signup Feature Test' do
  scenario 'signing up with valid data' do
  	user = FactoryGirl.build :user
		visit new_user_path
		fill_in 'Email', with: user.email
		fill_in 'Username', with: user.username
		fill_in 'Password', with: user.password
		fill_in 'Password confirmation', with: user.password
		click_button 'Create User'
	end
end
