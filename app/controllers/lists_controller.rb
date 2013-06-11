class ListsController < ApplicationController
  def index
    @lists = []
    @lists << WishList.new('Music',
                           [Item.new(name: 'Angels and Airwaves'),
                            Item.new(name: 'The National')])
    @lists <<  WishList.new('Home', [Item.new(name: 'New blinds')])
  end
end
