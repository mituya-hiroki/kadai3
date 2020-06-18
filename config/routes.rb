Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root "users#show"
  root "homes#index"
resources :books
resources :users 
resources :post_images

get "home/about" => "homes#about",as: "about_home"


end
