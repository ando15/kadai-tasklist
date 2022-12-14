Rails.application.routes.draw do
 
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  root to: "tasks#index"
  
  resources :tasks
  get "signup", to: "users#new"
  resources :users, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
