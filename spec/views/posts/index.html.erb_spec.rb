require 'rails_helper'

RSpec.describe 'posts/index.html.erb', type: :view do
  it 'displays the expected content for all posts for specific user id' do
    render
    expect(rendered).to have_content("Hello, This is 'posts' root views, 
      will shows all posts list based on specific user id")
  end
end
