Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :profiles, only: [:show, :edit, :update]
  resources :articles, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
