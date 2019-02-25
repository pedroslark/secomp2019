Rails.application.routes.draw do

  devise_for :users

  # Subscribe Students => Home page
  post "/"  => "backsite/home#create"
  root 'backsite/home#index'
  
  # System => Authenticate
  namespace :backsystem, path: "admin" do
    resources :students
    resources :events, :except => [:show]
    resources :secomps, :except => [:show]
    get "/" => "events#index"
    get "/events/:id" => "events#show",:as => "show" # mark presence event
  end

end
