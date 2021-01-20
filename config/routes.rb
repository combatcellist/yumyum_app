Rails.application.routes.draw do
  root 'items#index'
  devise_for :users
  resources :profiles, only: [:show, :new, :update, :edit, :create]
  resources :items do
   resources :comments, only: [:create]
  end
  
end
