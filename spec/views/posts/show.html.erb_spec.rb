require 'rails_helper'

RSpec.describe 'posts/show.html.erb', type: :view do
  it 'displays the expected content for show specific post for specific user id' do
    render
    expect(rendered).to have_content('Hello, This is specific post views for specific user id')
  end
end
