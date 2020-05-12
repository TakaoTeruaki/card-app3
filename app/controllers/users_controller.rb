class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def search
    @user = User.search(params[:id])
    @user = User.find(params[:id])
    @posts = @user.posts
  end

end
