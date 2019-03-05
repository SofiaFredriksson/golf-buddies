Rails.application.routes.draw do
  resources :reviews
  resources :clubs, only: [:show, :index]
  resources :users, only: [:show]

  get  'users/:id/buddies' => 'users#buddies', as: :buddies
  root to: 'pages#home'

  resources :clubs do
    resources :reviews, only: [:new]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
