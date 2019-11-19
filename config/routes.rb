Rails.application.routes.draw do
  get 'offers/index', to: 'offers#index'
  get 'offers/show/:id/user_id', to: 'offers#show'
  # devise_for :users
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
