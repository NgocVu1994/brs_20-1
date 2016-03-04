Rails.application.routes.draw do
  get 'comments/new'

  devise_for :users, controllers: {registrations: :registrations}
  root "static_pages#home"
  get "help" => "static_pages#help"
  resources :users, only: [:index]

  namespace :admin do
    root "static_pages#home"
    resources :users
    resources :books
  end
  resources :books
  resources :users, only: [:show]
  resources :comments
  resources :user_books, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy, :index]
  resources :favorites, only: [:create, :destroy]
  resources :reviews, only: [:create]
end
