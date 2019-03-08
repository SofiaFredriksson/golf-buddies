Rails.application.routes.draw do
  resources :reviews
  resources :clubs
  resources :users


  get  'users/:id/buddies' => 'users#buddies', as: :buddies
  root to: 'pages#home'

  resources :clubs do
    resources :reviews
  end
  
  get 'sessions/create'
  get 'sessions/destroy'
  post 'sessions/new'

  get "/signup", to: "users#new", as: "signup"
  get "/login", to: "sessions#new", as: "login"
  post "sessions", to: "sessions#create", as: "sessions"
  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
