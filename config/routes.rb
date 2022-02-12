Rails.application.routes.draw do
  get 'dashboard/index'
  resources :points
  resources :members
  resources :events
  root 'dashboard#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
