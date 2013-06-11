class ListsController < ApplicationController
  def index
  	@lists = Wishlist.order 'name'
	end
end
