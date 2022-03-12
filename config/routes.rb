Rails.application.routes.draw do

  get 'meal_records/index'
  get 'meal_records/new'
  get 'meal_records/create'
  get 'meal_records/show'
  get 'meal_records/edit'
  get 'meal_records/update'
  get 'meal_records/destroy'
  devise_for :users
  root to: 'homes#index'


  resources :tweets, only: [:index, :new, :create, :show, :destroy] do
    resources :comments, only: [:create, :destroy]
  end

resources :body_makes
resources :meal_records

end