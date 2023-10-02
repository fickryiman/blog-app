class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @user = User.find(params[:user_id])
    @like = Like.create(author: @user, post: @post)

    if @like.persisted?
      flash[:success] = 'Like post has added successfully!'
      redirect_to user_post_path(@user, @post)
    else
      flash[:alert] = 'Something went wrong'
      render :new
    end
  end
end
