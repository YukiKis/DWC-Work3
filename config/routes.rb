Rails.application.routes.draw do
  root to: "home#top"
  devise_for :users
  get "home/about" => "home#about", as: "home_about"
  get "home/top" => "home#top", as: "home_top"
  get "/" => "home#top"
  resources :users
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
