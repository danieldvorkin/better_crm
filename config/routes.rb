Rails.application.routes.draw do
  resources :quotes
  resources :addresses
  resources :inventory_items
  resources :customers do
    resources :addresses
  end
  resources :accounts
  root to: 'visitor#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end