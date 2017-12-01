# frozen_string_literal: true

Rails.application.routes.draw do
  resources :weapons, only: %i[index show]
  resources :quest_monsters, only: %i[index show]
  resources :monsters, only: %i[index show]
  resources :player_classes, only: %i[index show]
  resources :quests, only: %i[index show]
  resources :characters
  resources :examples, except: %i[new edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: %i[index show]
end
