Rails.application.routes.draw do
  root "top#index"
  devise_for :tenants
  devise_for :developers
  resources :spaces
  resources :brands
  resources :developers, only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
