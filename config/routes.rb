Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get 'user/:id/profile', to: 'users/registrations#profile', as: 'user_profile'
    get 'user/:id/account', to: 'users/registrations#account', as: 'user_account'
  end

  resources :subscribes, only: [:index, :new, :create, :show] do
    collection do
      get 'search'
    end
  end

  resources :reserves, only: [:index, :new, :create, :show ]
  post 'reserve/confirm', to: 'reserves#confirm'

  root 'pages#top'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
