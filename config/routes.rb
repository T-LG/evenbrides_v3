Rails.application.routes.draw do
  devise_for :users
  get root 'events#index'

  resources :users, only: [:show]
  
  resources :events do
    resources :attendances
    resources :picture_events, only: [:create]
  end

  resources :charges
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
