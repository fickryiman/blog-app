require 'rails_helper'

RSpec.describe Like, type: :model do
  it 'is not valid without an author_id' do
    like = Like.new(post_id: 1)
    expect(like).to_not be_valid
  end

  it 'is not valid without a post_id' do
    like = Like.new(author_id: 1)
    expect(like).to_not be_valid
  end
end
