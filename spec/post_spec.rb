require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is valid with valid attributes' do
    author = User.create(name: 'author-1')
    post = Post.new(title: 'post-1', text: 'post text', author:, comments_counter: 0, likes_counter: 0)
    expect(post).to be_valid
  end

  it 'is not valid without a title' do
    author = User.create(name: 'author-1')
    post = Post.new(text: 'post text', author:, comments_counter: 0, likes_counter: 0)
    expect(post).to_not be_valid
  end

  it 'is not valid when a title exceed 250 characters' do
    author = User.create(name: 'author-1')
    title = 'a' * 251
    post = Post.new(title:, text: 'post text', author:, comments_counter: 0, likes_counter: 0)
    expect(post).to_not be_valid
  end

  it 'is not valid with a non-integer comments_counter' do
    author = User.create(name: 'author-1')
    post = Post.new(title: 'post-1', text: 'post text', author:, comments_counter: 1.5, likes_counter: 0)
    expect(post).to_not be_valid
  end

  it 'is not valid with a negative comments_counter' do
    author = User.create(name: 'author-1')
    post = Post.new(title: 'post-1', text: 'post text', author:, comments_counter: -1, likes_counter: 0)
    expect(post).to_not be_valid
  end

  it 'is not valid with a non-integer likes_counter' do
    author = User.create(name: 'author-1')
    post = Post.new(title: 'post-1', text: 'post text', author:, comments_counter: 0, likes_counter: 1.5)
    expect(post).to_not be_valid
  end

  it 'is not valid with a negative likes_counter' do
    author = User.create(name: 'author-1')
    post = Post.new(title: 'post-1', text: 'post text', author:, comments_counter: 0, likes_counter: -1)
    expect(post).to_not be_valid
  end

  describe '#recent_comments' do
    before(:each) do
      @user = User.create(id: 1, name: 'user-1', bio: 'bio user-1', photo: '', posts_counter: 0)
      @post = Post.create(title: 'post-1', text: 'post text 1', comments_counter: 1, likes_counter: 1,
                          author_id: @user.id)
      @comment1 = Comment.create(id: 1, author_id: @user.id, post_id: @post.id, text: 'post comment 1',
                                 created_at: 5.days.ago)
      @comment2 = Comment.create(id: 2, author_id: @user.id, post_id: @post.id, text: 'post comment 2',
                                 created_at: 4.days.ago)
      @comment3 = Comment.create(id: 3, author_id: @user.id, post_id: @post.id, text: 'post comment 3',
                                 created_at: 3.days.ago)
      @comment4 = Comment.create(id: 4, author_id: @user.id, post_id: @post.id, text: 'post comment 4',
                                 created_at: 2.days.ago)
      @comment5 = Comment.create(id: 5, author_id: @user.id, post_id: @post.id, text: 'post comment 5',
                                 created_at: 1.day.ago)
    end
    it 'returns the 5 most recent_comments posts' do
      expect(@post.recent_comments).to eq([@comment5, @comment4, @comment3, @comment2, @comment1])
    end

    it 'limits the number of comments to 5' do
      expect(@post.recent_comments.count).to eq(5)
    end

    it 'orders the comments by created_at in descending order' do
      expect(@post.recent_comments).to eq([@comment5, @comment4, @comment3, @comment2, @comment1])
    end
  end

  describe '#update_posts_counter' do
    before(:each) do
      @user = User.create(id: 1, name: 'user-1', bio: 'bio user-1', photo: '', posts_counter: 0)
      @post = Post.new(author_id: @user.id, title: 'post-1', text: 'post text 1', comments_counter: 1, likes_counter: 1)
    end

    it 'updates the posts_counter attribute of the associated author' do
      expect do
        @post.save
        @user.reload
      end.to change(@user, :posts_counter).by(1)
    end
  end
end
