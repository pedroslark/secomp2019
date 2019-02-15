Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :admin
  root 'home#index'
  post "/"  => "home#create"

end
