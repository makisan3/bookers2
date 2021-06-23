Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'

  get "about" => "homes#about" , as: "about"
  get "/books" => "books#index"
  get "/books" => "books#edit"
  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]

end