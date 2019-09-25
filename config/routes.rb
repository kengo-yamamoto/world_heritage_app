Rails.application.routes.draw do
  root 'abouts#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }
  namespace :users do 
    resources :acounts, only: [:show, :edit, :update, :destroy]
  end
  resources :items, only: [:new, :index, :show]
  resources :naturals, only: [:index, :show]
  resources :caltuals, only: [:index, :show]
  resources :complexes, only: [:index, :show]
  resources :reviews
  resources :admin_items
  resources :admin_users, only: [:index, :show, :destroy]
  resources :ranks, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
