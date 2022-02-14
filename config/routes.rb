Rails.application.routes.draw do
  resources :positions
  resources :points
  resources :members
  resources :events
  resources :plants

  root 'dashboard#index'

  get 'dashboard/index', to: 'dashboard#index'
  get 'leaderboard/index', to: 'leaderboard#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
