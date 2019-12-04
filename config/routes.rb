Rails.application.routes.draw do
  devise_for :users
  root 'schools#index'
  resources :locations, only: [:index,:show]
  resources :languages, only: [:index,:show]
  resources :schools do
    resources :reviews
  end
  post   '/like/:review_id' => 'likes#like',   as: 'like'
  delete '/like/:review_id' => 'likes#unlike', as: 'unlike'
end