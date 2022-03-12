Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'


  resources :tweets, only: [:index, :create, :show, :destroy]
#do
#   resources :comments, only: [:create, :destroy]
# end
end