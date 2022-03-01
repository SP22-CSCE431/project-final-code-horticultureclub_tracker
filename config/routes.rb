# frozen_string_literal: true

Rails.application.routes.draw do
  resources :positions
  resources :points
  resources :members
  resources :events
  resources :plants
  # resources :admins

  root 'dashboard#index'
  # root to: 'dashboards#show'

  get 'leaderboard', to: 'leaderboard#index'
  get 'dashboard', to: 'dashboard#index'

  mount API::Base, at: '/'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '*path', to: 'dashboard#index', via: :all
end
