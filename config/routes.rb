Rails.application.routes.draw do
  devise_for :users
  root 'schools#index'
  resources :locations, only: [:index,:show]
  resources :schools, only: [:index,:show]
  resources :languages, only: [:index,:show]

end
