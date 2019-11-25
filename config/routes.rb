Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  get 'comments/create'
  get 'comments/destroy'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }

  #get 'mypage', to: 'users#show'
  #post 'login', to: 'sessions#create'
  #delete 'logout', to: 'sessions#destroy'
  #get '/youtube', to: 'youtube#index'
  #post '/search_youtube', to: 'youtube#search_youtube'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  get 'homes/about', to: 'homes#about'
  #get '/login',    to: 'sessions#new'
  #post '/login',   to: 'sessions#create'
  resources :recipes do
    resources :likes, only: %i[create destroy]
    resources :comments, only: %i[create destroy]
  end
  #resources :users, only: %i[new create]


end
