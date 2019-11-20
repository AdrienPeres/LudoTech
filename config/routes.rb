Rails.application.routes.draw do
  root to: 'offers#index'

  resources :offers, only: [ :show, :update ]

  namespace :my do
    resources :offers, only: :index
  end

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
