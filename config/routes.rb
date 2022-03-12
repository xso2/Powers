Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
end


resources :tweets #do
#   resources :comments, only: [:create, :destroy]
# end