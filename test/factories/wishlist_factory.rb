require 'factory_girl'

FactoryGirl.define do
	factory :wishlist do
		name "Movies"
		item_count 6
	end
end
