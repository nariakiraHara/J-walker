Rails.application.routes.draw do
  get 'prifiles/profile'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root 'homes#index'
  get 'homes/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
