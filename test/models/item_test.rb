require 'test_helper'

describe Item do
  describe 'creating an item' do
    before do
      @item = Item.new({name: 'Comic Book'})
    end

    it 'has a name' do
      @item.name.must_equal 'Comic Book'
    end

    it 'has an optional url' do
      @item.url.must_be_nil
      item = Item.new({name: 'thing', url: 'http://marvel.com'})
      item.url.must_equal 'http://marvel.com'
    end

    it 'has an optional price' do
      @item.price.must_equal 0
      item = Item.new({name: 'thing', price: 0.99})
      item.price.must_equal 0.99
    end

    it 'has an optional sale status' do
      @item.sale.must_equal false
      item = Item.new({name: 'thing', sale: true})
      item.sale.must_equal true
    end

    it 'can have a list of photos' do
      @item.photos.must_equal []
      photo = Photo.new('http://facebook.com/logo.jpg')
      item = Item.new({name: 'Stuff', photos: [photo]})
      item.photos.must_equal [photo]
    end
  end

  describe 'modifying an item' do
    before do
      @item = Item.new({name: 'Iron Man', url: 'http://ironman.com',
                       price: 15.00, sale: false})
    end

    it 'allows the url to be changed' do
      @item.url.must_equal 'http://ironman.com'
      @item.url = 'http://facebook.com'
      @item.url.must_equal 'http://facebook.com'
    end

    it 'allows the price to be changed' do
      @item.price.must_equal 15.0
      @item.price = 10.0
      @item.price.must_equal 10.0
    end

    it 'allows the sale status to be changed' do
      @item.sale.must_equal false
      @item.sale = true
      @item.sale.must_equal true
    end
  end
end
