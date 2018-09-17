Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :profiles, only: [:show, :edit, :update] do
    resources :user_images, only: [:index, :show, :create], as: :images
  end
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
