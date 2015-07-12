Rails.application.routes.draw do

  root to: "pages#index"

  #get "/home", to "pages#about" as: :home
  #get "/about", to "pages#about" as: :about

  resources :candidates
  resources :positions
  resources :users
  resources :votes 
end
