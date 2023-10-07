require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  let(:valid_attributes) do
    { name: 'Fickry',
      posts_counter: 1
    }
  end

  describe 'GET /index' do
    before :each do
      @user = User.create! valid_attributes
      get user_posts_path(@user)
    end

    it 'returns a http successfull response' do
      expect(response).to be_successful
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end

    it 'includes correct a text in the response body' do
      expect(response.body).to include('Number of post:')
    end
  end

  describe 'GET /show' do
    before :each do
      @user = User.create! valid_attributes
      @post = 
      get user_post_path(@user, @id)
    end

    it 'returns a http successfull response' do
      expect(response).to be_successful
    end

    it 'renders the index template' do
      expect(response).to render_template('templates/_users')
    end

    it 'includes correct a text in the response body' do
      expect(response.body).to include('Add post likes')
    end
  end

  
end
