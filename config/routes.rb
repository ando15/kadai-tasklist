Rails.application.routes.draw do
  get 'microposts/create'
  get 'microposts/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'toppages/index'
  
  
  root to: 'toppages#index'
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destory"
  
  get "signup", to: "users#new"
  resources :users,only: [:index, :show, :create]
  resources :microposts,only: [:create,:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
