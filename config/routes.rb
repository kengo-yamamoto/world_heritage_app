Rails.application.routes.draw do
  root 'abouts#index'
  devise_for :user
  devise_for :admins
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :items, only: [:new, :index, :show] do
    resources :reviews
  end
  resources :naturals, only: [:index, :show]
  resources :caltuals, only: [:index, :show]
  resources :complexes, only: [:index, :show]
  
  resources :admin_items
  resources :admin_users, only: [:index, :show, :destroy]
  resources :ranks, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
