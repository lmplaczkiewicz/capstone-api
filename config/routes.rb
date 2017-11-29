# frozen_string_literal: true

Rails.application.routes.draw do
  resources :quest_monsters
  resources :monsters
  resources :player_classes
  resources :quests
  resources :characters
  resources :examples, except: %i[new edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: %i[index show]
end
