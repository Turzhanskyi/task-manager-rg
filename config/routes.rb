# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root to: 'projects#index'

  resources :projects do
    resources :tasks
  end

  mount LetterOpenerWeb::Engine, at: '/letter_opener'
  mount ActionCable.server => '/cable'
end
