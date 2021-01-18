Rails.application.routes.draw do
  devise_for :users
  resources :shopifydbs
  get 'home/about'
  root 'shopifydbs#index'
  get 'search', to: "shopifydbs#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
