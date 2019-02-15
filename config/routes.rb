Rails.application.routes.draw do
  get 'home/index'
  resources :admin
  root 'home#index'
  post "/"  => "home#create"

end
