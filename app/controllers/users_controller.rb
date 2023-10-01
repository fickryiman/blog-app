class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @recent_posts = @user.recent_posts
    @counter = 1
  end
  
  def index
    @users = User.all
    @user = current_user
  end

  
end
