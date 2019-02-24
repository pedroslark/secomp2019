Rails.application.routes.draw do

  devise_for :users

  # Subscribe Students => Home page
  post "/"  => "backsite/home#create"
  root 'backsite/home#index'
  
  # System => Authenticate
  namespace :backsystem, path: "admin" do
    resources :students
    resources :events
    resources :secomps, :except => [:show]
    get "/" => "events#index"
  end

end
