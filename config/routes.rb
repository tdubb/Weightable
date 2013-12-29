Weightable::Application.routes.draw do
  
  devise_for :users
  get "weights/new"
  get "weights/updatecreate"
  get "weights/destroy"
  get "weights/edit"
  get "weights/show"
  get "weights/index"
  get "users/new"
  get "users/updatecreate"
  get "users/destroy"
  get "users/edit"
  get "users/show"
  get "users/index"
  root 'users#landing' 
  post "users/search"
  get "users/search"

  resources :friendships

  resources :users do
    resources :weights
  end
end
