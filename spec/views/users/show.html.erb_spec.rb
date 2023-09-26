require 'rails_helper'

RSpec.describe 'users/show.html.erb', type: :view do
  it 'displays the expected content for show specific users id' do
    render
    expect(rendered).to have_content('Hello, This is views for specific user id')
  end
end
