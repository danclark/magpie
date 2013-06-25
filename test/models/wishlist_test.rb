require 'test_helper'

describe Wishlist do
	describe 'associatations' do
		it 'can belong to a user' do
			user = FactoryGirl.create :user
			wishlist = FactoryGirl.create :wishlist
			wishlist.user = user
			wishlist.save
			wishlist.user_id.must_equal user.id
		end
	end
end
