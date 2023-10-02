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

  # Prefix Verb   		        URI 		  Pattern                                                    Controller#Action
  # ------------		        -------		  --------------------------------------------------				 ------------------------
  # root 		                  GET    		/                                                          users#index
  # user_post_comments 		    POST   		/users/:user_id/posts/:post_id/comments(.:format)          comments#create
  # new_user_post_comment 		GET    		/users/:user_id/posts/:post_id/comments/new(.:format)      comments#new
  # user_post_likes 		      POST   		/users/:user_id/posts/:post_id/likes(.:format)             likes#create
  # user_posts 		            GET    		/users/:user_id/posts(.:format)                            posts#index
  #                           POST   		/users/:user_id/posts(.:format)                            posts#create
  # new_user_post 		        GET    		/users/:user_id/posts/new(.:format)                        posts#new
  # user_post 		            GET    		/users/:user_id/posts/:id(.:format)                        posts#show
  # users 		                GET    		/users(.:format)                                           users#index
  # user 		                  GET    		/users/:id(.:format)                                       users#show
