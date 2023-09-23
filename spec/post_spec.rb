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
end
