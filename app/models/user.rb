class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :email, :password, :username, :password_confirmation

	has_many :wishlists

	validates :username, presence: true, uniqueness: true
	validates :password, confirmation: true, presence: true, if: :password
	validates :email, presence: true, uniqueness: true, format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]+\z/ }
end
