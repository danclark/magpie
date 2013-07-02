require 'test_helper'

feature 'Sign In Feature Test' do
	scenario 'signing in with a valid email and password' do
		user = FactoryGirl.create :user, password: 'abc123'
		visit signin_path
		fill_in 'Email', with: user.email
		fill_in 'Password', with: 'abc123' 
		click_button 'Sign In'
		current_path.must_equal lists_path
		page.must_have_content "Welcome #{user.name}"
	end

	scenario 'signing in with a valid email but invalid password set' do
		user = FactoryGirl.create :user, password: 'abc123'
		visit signin_path
		fill_in 'Email', with: user.email
		fill_in 'Password', with: 'abc1234'
		click_button 'Sign In'
		current_path.must_equal '/sessions'
		page.must_have_content 'Invalid email or password'
	end
end
