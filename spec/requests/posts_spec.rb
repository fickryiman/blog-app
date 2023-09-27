require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /users/:user_id/posts/:id' do
    it 'returns http success' do
      get '/users/1/posts/1'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /users/:user_id/posts' do
    it 'returns http success' do
      get '/users/1/posts'
      expect(response).to have_http_status(:success)
    end
  end
end
