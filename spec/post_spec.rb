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
    it 'returns the 5 most recent comments' do
      post = Post.create(title: 'Test Post')
      comment1 = Comment.create(post: post, content: 'Comment 1', created_at: 1.day.ago)
      comment2 = Comment.create(post: post, content: 'Comment 2', created_at: 2.days.ago)
      comment3 = Comment.create(post: post, content: 'Comment 3', created_at: 3.days.ago)
      comment4 = Comment.create(post: post, content: 'Comment 4', created_at: 4.days.ago)
      comment5 = Comment.create(post: post, content: 'Comment 5', created_at: 5.days.ago)
      comment6 = Comment.create(post: post, content: 'Comment 6', created_at: 6.days.ago)

      expect(post.recent_comments).to eq([comment1, comment2, comment3, comment4, comment5])
    end
  end

  describe '#update_posts_counter' do
    it 'updates the posts_counter attribute of the author' do
      author = Author.create(name: 'Test Author')
      post = Post.create(title: 'Test Post', author: author)

      expect { post.send(:update_posts_counter) }.to change { author.reload.posts_counter }.from(0).to(1)
    end
  end
end
