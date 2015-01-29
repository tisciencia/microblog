Rails.application.routes.draw do

  root 'home#index'

  get 'about-me' => 'home#aboutme', as: :aboutme

  resources :contacts, only: [:new, :create]
  resources :posts

end
