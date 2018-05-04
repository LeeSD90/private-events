class SessionsController < ApplicationController
	include SessionsHelper

	def new
	end

	def create
		@user = User.find(params[:session][:id].downcase)
		log_in(@user)
		redirect_to @user
	end

	def destroy
		log_out
		redirect_to login_path
	end

end
