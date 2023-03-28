# frozen_string_literal: true

Rails.application.routes.draw do
  resources :states
  #resources :characters
  #resources :sexes
  #resources :features
  #resources :feature_types
  #resources :entities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'

  get 'pages/output' => 'pages#output'
  get '/admin', to: redirect('/states')
  get '/characters', to: redirect('/states')
  get '/sexes', to: redirect('/states')
  get '/features', to: redirect('/states')
  get '/feature_types', to: redirect('/states')
  get '/entities', to: redirect('/states')
end
