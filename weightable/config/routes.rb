Weightable::Application.routes.draw do
  
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
  root 'index#show' 
  resources :users do
    resources :weights
  end
end
