class Wishlist < ActiveRecord::Base
	attr_accessible :name, :item_count

	belongs_to :user
end
