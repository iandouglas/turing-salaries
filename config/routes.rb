Rails.application.routes.draw do
  root to: 'jobs#index'

  resources :jobs, only: [:index, :show]
  resources :regions, only: [:index, :show]
  resources :cities, only: [:index, :show]
end
