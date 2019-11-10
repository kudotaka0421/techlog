Rails.application.routes.draw do
  resources :schools, only: [:index]
  root 'schools#index'
end
