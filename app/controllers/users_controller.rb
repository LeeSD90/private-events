class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(:name => params[:user][:name])
  	@user.save
    redirect_to events_path
  end

  def show
  	@user = User.find(params[:id])
  end
end
