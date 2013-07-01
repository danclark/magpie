class SessionsController < ApplicationController
	def new
		@users = User.new
	end

	def create
		@user = login(params[:user][:email], params[:user][:password])
		redirect_to root_path
	end
end
