Rails.application.routes.draw do
  get 'articles/new'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root 'homes#index'
  resources :homes, only: [:index, :show, :edit, :update]
  resources :articles, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
