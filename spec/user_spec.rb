require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = User.new(name: 'user-1', posts_counter: 0)
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user = User.new(posts_counter: 0)
    expect(user).to_not be_valid
  end

  it 'is not valid with a non-integer posts_counter' do
    user = User.new(name: 'user-1', posts_counter: 2.5)
    expect(user).to_not be_valid
  end

  it 'is not valid with a negative posts_counter' do
    user = User.new(name: 'user-1', posts_counter: -1)
    expect(user).to_not be_valid
  end

  before(:each) do
    @user = User.create(id: 1, name: 'user-1', bio: 'bio user-1', photo: '', posts_counter: 0)
    @post1 = Post.create(title: 'post-1', text: 'post text 1', comments_counter: 1, likes_counter: 1,
                         author_id: @user.id)
    @post2 = Post.create(title: 'post-2', text: 'post text 2', comments_counter: 1, likes_counter: 1,
                         author_id: @user.id)
    @post3 = Post.create(title: 'post-3', text: 'post text 3', comments_counter: 1, likes_counter: 1,
                         author_id: @user.id)
  end

  describe '#recent_posts' do
    it 'returns the 3 most recent posts' do
      expect(@user.recent_posts).to eq([@post3, @post2, @post1])
    end

    it 'limits the number of posts to 3' do
      expect(@user.recent_posts.count).to eq(3)
    end

    it 'orders the posts by created_at in descending order' do
      expect(@user.recent_posts).to eq([@post3, @post2, @post1])
    end
  end
end
