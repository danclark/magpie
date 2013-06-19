class User < ActiveRecord::Base
  attr_accessible :email, :password, :username, :password_confirmation

	validate :username, presence: true, uniqueness: true
	validate :password, confirmation: true, presence: true
	validate :email, presence: true, uniqueness: true
end
