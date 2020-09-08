Rails.application.routes.draw do
  root "home#top"
  devise_for :users
  get "home/about" => "home#about", as: "home_about"
  get "home/top" => "home#top", as: "home_top"
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
