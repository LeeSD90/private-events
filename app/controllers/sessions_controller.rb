class SessionsController < ApplicationController
	def new
	end

	def create
		@user = User.find(params[:session][:id].downcase)
		sign_in(@user)
		redirect_to @user
	end

	def destroy
		session.delete(:user_id)
		redirect_to login_path
	end

	private
		def sign_in(user)
			session[:user_id] = @user.id
		end
end
