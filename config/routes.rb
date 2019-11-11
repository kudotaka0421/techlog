Rails.application.routes.draw do
  devise_for :users
  resources :schools, only: [:index,:show]
  root 'schools#index'
end
