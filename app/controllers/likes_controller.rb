class LikesController < ApplicationController
  def create
    @post = Post.find(params[:id])
    @like = Like.create(author: current_user, post: @post)

    if @like.persisted?
      flash[:success] = 'Like post has added successfully!'
      redirect_to user_post_path(current_user, @post)
    else
      flash[:alert] = 'Something went wrong'
      render :new
    end
  end
end
