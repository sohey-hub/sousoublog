Rails.application.routes.draw do
  get 'messages/new'
  devise_for :users
  root to: 'articles#index'
  resources :articles do
    resources :messages, only: [:new, :create]
  end
    resources :moneys, only: :index
  resources :youtubes, only: :index
  resources :mentals, only: :index
  resources :travels, only: :index
  resources :programings, only: :index
  resources :events, only: :index
  resources :biographys, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end