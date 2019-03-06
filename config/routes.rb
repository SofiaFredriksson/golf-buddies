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
 get 'sessions/new'

 post "/login", to: "sessions#create"
 get "/login", to: "sessions#new"
 get "/logout", to: "sessions#destroy"
 get "/signup", to: "users#new"


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
