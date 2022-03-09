Rails.application.routes.draw do
  get 'dashboard/index'
  resources :quotes
  resources :addresses
  resources :inventory_items
  
  resources :customers do
    resources :addresses
    resources :quotes
  end

  resources :accounts do
    resources :customers
    resources :inventory_items
  end
  
  get 'lookup', to: 'addresses#lookup', as: 'lookup'
  get 'getCustomerData', to: 'dashboard#getCustomerData', as: 'getCustomerData'
  root to: 'visitor#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
