require 'test_helper'

describe User do
	describe 'validations' do
		let(:user) { FactoryGirl.build :user }

		it 'must have an email address' do
			user.email = ''
			user.valid?.wont_equal true
			user.errors[:email].must_include "can't be blank"
		end

		it 'must have a unique email address' do
			FactoryGirl.create :user
			user.valid?.wont_equal true
			user.errors[:email].must_include "has already been taken"
		end

		it 'must have a valid email address' do
			user.email = 'dclark8@'
			user.valid?.wont_equal true
		end

		it 'must have a username' do
			user.username = ''
			user.valid?.wont_equal true
			user.errors[:username].must_include "can't be blank"
		end

		it 'must have a unique username' do
			FactoryGirl.create :user
			user.valid?.wont_equal true
			user.errors[:username].must_include "has already been taken"
		end

		it 'must have a password' do
			user.password = ''
			user.valid?.wont_equal true
			user.errors[:password].must_include "can't be blank"
		end

		it 'must have matching passwords' do
			user.password_confirmation = 'abc1234'
			user.valid?.wont_equal true
			user.errors[:password].must_include "doesn't match confirmation"
		end

	end
end
