# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'comments/create'
  # get 'comments/destroy'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :users, only: %i[show] do
    # member do
    #   put 'follow',            to: 'users#follow'
    #   put 'unfollow',          to: 'users#unfollow'
    #   get 'follow_list',       to: 'users#follow_list'
    #   get 'follower_list',     to: 'users#follower_list'
    # end
  end
  # get 'mypage', to: 'users#show'
  # post 'login', to: 'sessions#create'
  # delete 'logout', to: 'sessions#destroy'
  # get '/youtube', to: 'youtube#index'
  # post '/search_youtube', to: 'youtube#search_youtube'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
  get 'search', to: 'recipes#search'
  # get '/login',    to: 'sessions#new'
  # post '/login',   to: 'sessions#create'
  resources :recipes do
    resources :comments, only: %i[create destroy]
    resources :likes, only: %i[create destroy]
  end
  # resources :users, only: %i[new create]
end
