# frozen_string_literal: true

Rails.application.routes.draw do
  get 'sessions/new'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  root 'welcome#index'

  get '/homepage', to: 'welcome#index'

  get '/signup', to: 'users#new'

  post '/signup', to: 'users#create'

  get '/posts', to: 'posts#new'

  post '/posts', to: 'posts#create'

  get '/allposts', to: 'posts#index'

  get '/posts/:id', to: 'posts#show'

  delete '/posts/:id', to: 'posts#destroy'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :posts
end
