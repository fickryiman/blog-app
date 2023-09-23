require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should be valid with valid attributes' do
    user = User.create(name: 'Fickry')
    post = Post.new(author: user, title: 'Hello', comments_counter: 0, likes_counter: 0)
    assert post.valid?
  end

  test 'should not be valid without a title' do
    user = User.create(name: 'Ruth')
    post = Post.new(author: user, comments_counter: 0, likes_counter: 0)
    assert_not post.valid?
  end

  test 'title should not exceed 250 characters' do
    user = User.create(name: 'Tiara')
    post = Post.new(author: user, title: 'A' * 251, comments_counter: 0, likes_counter: 0)
    assert_not post.valid?
  end

  test 'comments_counter should be an integer greater than or equal to zero' do
    user = User.create(name: 'Mike')
    post = Post.new(author: user, title: 'Example', comments_counter: -1, likes_counter: 0)
    assert_not post.valid?
  end

  test 'likes_counter should be an integer greater than or equal to zero' do
    user = User.create(name: 'Anton')
    post = Post.new(author: user, title: 'Test', comments_counter: 0, likes_counter: -1)
    assert_not post.valid?
  end
end
