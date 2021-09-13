Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  get 'dashboard', to: 'pages#dashboard'

 resources :castings, only: [:show, :index, :new, :create, :delete]


  resources :posts, only: [:show, :create, :index]


  mount Thredded::Engine => '/forum'

end
