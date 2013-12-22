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
  root 'users#show' 
  resources :users do
    resources :weights
  end
end
