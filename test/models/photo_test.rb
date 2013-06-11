require 'test_helper'

describe Photo do
  describe 'creating a photo' do
    it 'has a url' do
      photo = Photo.new('http://www.placecage.com/c/200/300')
      photo.url.must_equal 'http://www.placecage.com/c/200/300'
    end
  end
end
