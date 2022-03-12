Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#index'


  resources :tweets, only: [:index, :new, :create, :show, :destroy]
#do
#   resources :comments, only: [:create, :destroy]
# end

resources :body_makes

end