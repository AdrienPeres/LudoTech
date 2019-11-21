Rails.application.routes.draw do

 # namespace :owner do
 #   get 'games/index'
 #   get 'games/new'
 #   get 'games/create'
 # end

  root to: 'offers#index'

  resources :offers, only: [ :show, :update ]

  namespace :my do
    resources :offers, only: :index
  end

  namespace :owner do
    resources :offers, only: [ :index, :edit, :update, :destroy]
    resources :games, only: [ :index, :new, :create, :destroy, :edit, :update ] do
      resources :offers, only: [ :new, :create ]
    end
  end

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
