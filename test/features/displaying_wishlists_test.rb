require "test_helper"

feature 'Displaying Wishlists Feature Test' do
  scenario 'displaying the wishlist names' do
		FactoryGirl.create :wishlist, name: 'Beer'
		FactoryGirl.create :wishlist, name: 'Movies'
    visit lists_path
    page.must_have_content 'Beer'
		page.must_have_content 'Movies' 
  end

	scenario 'displaying the wishlist item count' do
		FactoryGirl.create :wishlist, name: 'Beer', item_count: 12
		FactoryGirl.create :wishlist, name: 'Movies', item_count: 2
		visit lists_path
		page.must_have_content '(12)'
		page.must_have_content '(2)'
	end

	scenario 'displaying an empty list' do
		visit lists_path
		page.must_have_content 'No lists'
	end
end
