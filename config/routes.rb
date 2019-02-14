Rails.application.routes.draw do
  get 'home/index'
  root 'admin#index'
  post "/"  => "home#create"

end
