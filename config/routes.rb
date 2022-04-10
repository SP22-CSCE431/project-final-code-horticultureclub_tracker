# frozen_string_literal: true

Rails.application.routes.draw do
  get 'admins/index'
  resources :eligible_admins
  resources :positions
  resources :points
  resources :members
  resources :events
  resources :plants
  # resources :admins

  root 'website#index'
  # root 'dashboard#index'
  devise_for :admins, controllers: { omniauth_callbacks: 'admins/omniauth_callbacks' }
  devise_scope :admin do
    get 'admins/sign_in', to: 'admins/sessions#new', as: :new_admin_session
    get 'admins/sign_out', to: 'admins/sessions#destroy', as: :destroy_admin_session
  end

  get 'leaderboard', to: 'leaderboard#index'
  get 'dashboard', to: 'dashboard#index'
  get 'website', to: 'website#index'
  get 'plantsale', to: 'website#plantsale'
  get 'help', to: 'help#help'

  mount API::Base, at: '/'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '*path', to: 'website#index', via: :all
end
