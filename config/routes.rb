Rails.application.routes.draw do
  root to: 'offers#index'

  get 'offers/:id', to: 'offers#show'
  patch 'offers/:id', to: 'offers#update'

  get 'my/offers', to: 'offers#index'



  # devise_for :users
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
