require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:valid_attributes) do
    { name: 'Fickry',
      posts_counter: 1
    }
  end

  describe 'GET /index' do
    before :each do
      get users_path
    end

    it 'returns a http successfull response' do
      get '/users'
      expect(response).to be_successful
    end

    it 'renders correct template' do
      expect(response).to render_template(:index)
    end

    it 'includes correct a text in the response body' do
      expect(response.body).to include('Add a new post')
    end
  end

  describe 'GET /show' do
    before :each do
      @user = User.create! valid_attributes
      get user_path(@user)
    end

    it 'returns a http successfull response' do
      expect(response).to be_successful
    end

    it 'renders correct template' do
      expect(response).to render_template(:show)
    end

    it 'includes correct text in the response body' do
      expect(response.body).to include('No posts found for this user')
    end
  end
end
