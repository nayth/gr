Rails.application.routes.draw do

  # Dashboard Routes
  get 'dashboard', to: 'dashboard#show'

  # User Routes
  devise_for :users

  # Listing Routes
  resources :listings

  # Home Routes
  root 'home#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
