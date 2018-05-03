class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(:name => params[:user][:name])
  	@user.save
  end

  def show
  	@user = User.find(params[:id])
  end
end
