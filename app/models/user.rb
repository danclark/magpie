class User < ActiveRecord::Base
  attr_accessible :email, :password, :username, :password_confirmation

	validates :username, presence: true, uniqueness: true
	validates :password, confirmation: true, presence: true
	validates :email, presence: true, uniqueness: true, format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]+\z/ }
end
