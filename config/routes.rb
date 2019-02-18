Rails.application.routes.draw do

  devise_for :users

  # backsite
  post "/"  => "backsite/home#create"
  root 'backsite/home#index'

  # backsystem
  get "/admin" => "backsystem/home#index"
  resources :students

end
