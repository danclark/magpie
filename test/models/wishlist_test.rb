require 'test_helper'

describe WishList do
  describe 'creating a wishlist' do
    it 'has a name' do
      list = WishList.new('First List', [])
      list.name.must_equal 'First List'
    end

    it 'has items' do
      list = WishList.new('List', [1, 2])
      list.items.must_equal [1, 2]
    end

    it 'can be created without a list of items' do
      list = WishList.new('list')
      list.items.must_equal []
    end
  end

  describe 'manipulating a wishlist' do
    it 'returns how big it is' do
      list = WishList.new('List', [])
      list.size.must_equal 0
      list2 = WishList.new('Second List', ['a', 'b'])
      list2.size.must_equal 2
    end

    it 'allows for items to be added to the end of list' do
      list = WishList.new('List', [])
      list.add('Comic Book')
      list.items.must_equal ['Comic Book']
    end

    it 'can return a specific number of the items from the top' do
      list = WishList.new('List', [1, 2, 3, 4, 5])
      list.top(3).must_equal [1, 2, 3]
    end
  end
end
