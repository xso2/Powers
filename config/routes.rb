Rails.application.routes.draw do

  resources :lists
  get 'lists/index'
  devise_for :users
  root to: 'homes#index'

  resources :users, only:[:index, :show] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end

  resources :tweets, only: [:index, :new, :create, :show, :destroy] do
    resources :comments, only: [:create, :destroy]
  end

resources :body_makes
resources :meal_records
resources :lists
end