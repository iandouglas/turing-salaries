Rails.application.routes.draw do
  root to: 'jobs#index'

  resources :jobs, only: [:index]
  resources :regions, only: [:index, :show]
  resources :cities, only: [:index, :show]
end
