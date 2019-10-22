Rails.application.routes.draw do

  get 'mypage', to: 'users#show'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  #get '/youtube', to: 'youtube#index'
  #post '/search_youtube', to: 'youtube#search_youtube'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
  get 'homes/about', to: 'homes#about'
  get '/login',    to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  resources :recipes
  resources :users, only: %i[new create]
  resources :comments, only: %i[create destroy]

end
