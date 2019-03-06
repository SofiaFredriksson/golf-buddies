Rails.application.routes.draw do
  resources :reviews
  resources :clubs
  resources :users

  get  'users/:id/buddies' => 'users#buddies', as: :buddies
  root to: 'pages#home'

  resources :clubs do
    resources :reviews
  end



# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
