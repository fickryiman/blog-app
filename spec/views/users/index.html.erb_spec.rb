require 'rails_helper'

RSpec.describe 'users/index.html.erb', type: :view do
  it 'display expected content for user index' do
    render
    expect(rendered).to have_content("Hello, This is 'users' root views, , will shows all users list")
  end
end
