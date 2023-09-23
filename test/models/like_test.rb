require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should create valid like' do
    user = User.create(name: 'Fickry')
    post = Post.create(author: user, title: 'Test')
    like = Like.create(post:, author: user)
    assert like.valid?
  end

  test 'should not create like if no user' do
    user = User.create(name: 'Arif')
    post = Post.create(author: user, title: 'Test')
    like = Like.create(post:)
    assert_not like.valid?
  end

  test 'should not create like if no post' do
    user = User.create(name: 'Yofan')
    like = Like.create(author: user)
    assert_not like.valid?
  end

  test 'should update likes_counter correctly' do
    user = User.create(name: 'Victor')
    post = Post.create(author: user, title: 'Test', comments_counter: 0, likes_counter: 0)
    Like.create(post:, author: user)
    assert_equal 1, post.likes_counter
  end
end
