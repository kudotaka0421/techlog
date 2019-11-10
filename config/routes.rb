Rails.application.routes.draw do
  devise_for :users
  resources :schools, only: [:index]
  root 'schools#index'
end
