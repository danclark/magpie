require 'test_helper'

feature 'Sign In Feature Test' do
	scenario 'signing in with a valid email and password' do
		user = FactoryGirl.create :user
		visit signin_path
		fill_in 'Email', with: user.email
		fill_in 'Password', with: user.password
		click_button 'Sign In'
	end
end
