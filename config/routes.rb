Rails.application.routes.draw do

  #get 'users/new'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root 'static_pages#home'
  #get 'static_pages/home'
  match '/signup', 	to: 'users#new', 		via: 'get'
  match '/signin', 	to: 'sessions#new', 	via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

end
