Rails.application.routes.draw do
  resources :posts
  devise_for :users, only: %i[sessions registrations passwords]
  root "posts#index"

  resources :posts, only: %i[index show new create]
  resources :users, only: %i[show], param: :username
  get "edit_profile", to: "users#edit"
  patch "profile", to: "users#update"
end
