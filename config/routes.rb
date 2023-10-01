# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"

  # post "/users/:user_id/posts/:id/newcomment", to: "comments#create", as: "create_new_comment"
  # post "/users/:user_id/posts/:id/newlike", to: "likes#create", as: "create_new_like"
  # post "/users/:user_id/posts/new", to: "posts#create", as: "create_user_posts"
  
  # get "/users/:user_id/posts/new", to: "posts#new", as: "user_new_posts"
  # get "/users/:user_id/posts/:id", to: "posts#show", as: "user_post"
  # get "/users/:user_id/posts", to: "posts#index", as: "user_posts"
  
  # get "/users/:id", to: "users#show", as: "user"
  # get "/users", to: "users#index", as: "users"
  
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create] do
      resources :comments,  only: [:create]
      resources :likes,  only: [:create] 
    end
  end

end
