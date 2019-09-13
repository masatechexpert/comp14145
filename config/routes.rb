Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'
  resources :events
  resources :users, only: [:index, :edit, :update]
  resources :todos
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :bulletin_boards, only: [:index, :create]
  end
end
