require "test_helper"

feature 'Displays User Data  Feature Test' do
  scenario 'displays a single user' do
		user = FactoryGirl.create :user, email: 'nc@yahoo.com', username: 'nclark', password: 'bhe' 
		visit user_path user 
		page.must_have_content 'nclark'
		page.must_have_content 'nc@yahoo.com'
	end
end
