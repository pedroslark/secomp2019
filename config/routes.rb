Rails.application.routes.draw do

  devise_for :users

  # backsite
  post "/"  => "backsite/home#create"
  root 'backsite/home#index'

  # backsystem
  get "/admin" => "backsystem/home#index"
  get "/admin/students" => "backsystem/students#index"
  get "/admin/events" => "backsystem/events#index"
  resources :students
  resources :events

end
