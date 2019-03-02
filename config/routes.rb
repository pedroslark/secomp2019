Rails.application.routes.draw do

  devise_for :users

  # Subscribe Students => Home page
  post "/"  => "backsite/home#create"
  post "/send_simposio" => "backsite/home#send_symposium"
  root 'backsite/home#index'
  
  # System => Authenticate
  namespace :backsystem, path: "admin" do
    resources :students, :except => [:new, :create]
    resources :events, :except => [:show]
    resources :secomps, :except => [:show]
    get "/" => "events#index"
    get "/events/:id" => "events#show",:as => "show" # mark presence event
  end

end
