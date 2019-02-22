Rails.application.routes.draw do

  devise_for :users

  post "/"  => "backsite/home#create"
  root 'backsite/home#index'

  get "/admin" => "backsystem/home#index"
  get "/admin/students" => "backsystem/students#index"
  
  namespace :backsystem do
    resources :events
    resources :secomps, :except => [:show]
    get "/" => "home#index"
    get "/students" => "students#index"
  end

end
