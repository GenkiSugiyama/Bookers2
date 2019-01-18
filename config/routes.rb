Rails.application.routes.draw do
  root :to => 'tops#view'

  get "/about" => 'tops#about'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  resources :users, only: [:show, :edit, :update, :index]
end
