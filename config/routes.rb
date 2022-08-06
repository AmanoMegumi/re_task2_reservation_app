Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get 'user/:id/profile', to: 'users/registrations#profile', as: 'user_profile'
    get 'user/:id/account', to: 'users/registrations#account', as: 'user_account'
  end

  get 'subscribe/new', to: 'subscribes#new'
  post 'subscribe/create', to: 'subscribes#create'
  get 'subscribe/index', to: 'subscribes#index'
  get 'subscribe/:id', to: 'subscribes#show', as: 'subscribe'

  resources :reserves, only: [:index, :new, :create, :show ]
  post 'reserve/confirm', to: 'reserves#confirm'

  root 'pages#top'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
