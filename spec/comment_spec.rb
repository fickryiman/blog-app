require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:each) do
    @user = User.create(id: 1, name: 'user-1', bio: 'bio user-1', photo: '', posts_counter: 0)
    @post = Post.create(title: 'post-1', text: 'post text', comments_counter: 1, likes_counter: 1, author_id: @user.id)
    @comment = Comment.new(text: 'post comment', author_id: @user.id, post_id: @post.id)
  end

  describe '#update_comments_counter' do
    it 'updates the comments_counter of the related post' do
      Comment.create(author: @user, post: @post, text: 'Comment testing')
      @post.reload
      expect(@post.comments_counter).to eq(1)
    end
  end
end
