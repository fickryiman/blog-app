require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should be valid with valid attributes' do
    user = User.new(name: 'Fickry', posts_counter: 0)
    assert user.valid?
  end

  test 'should not be valid without a name' do
    user = User.new(posts_counter: 0)
    assert_not user.valid?
  end

  test 'should not be valid with a negative post counter' do
    user = User.new(name: 'Ruth', posts_counter: -1)
    assert_not user.valid?
  end
end
