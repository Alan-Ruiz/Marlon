Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"


 resources :castings, only: [:show, :index, :new]


  resources :posts, only: [:show, :create, :index]
end
