Rails.application.routes.draw do

    get 'hello/index'
    root to: "tweets#index"
    devise_for :users
  
    resources :tweets do
      resources :likes, only: [:create, :destroy]
      resources :comments, only: [:create]
    end

    resources :users

    resources :messages, :only => [:create]
    resources :rooms, :only => [:create, :show, :index]

    resources :relationships, only: [:create, :destroy]

end