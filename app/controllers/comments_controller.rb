class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @user = User.find(params[:user_id])
    @text = params[:text]
    @comment = Comment.create(author: @user, post: @post, text: @text)

    if @comment.persisted?
      flash[:success] = 'Post comment has added successfully!'
      redirect_to user_post_path(@user, @post)
    else
      flash[:alert] = 'Something went wrong'
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
