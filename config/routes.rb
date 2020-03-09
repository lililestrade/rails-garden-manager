Rails.application.routes.draw do
  root to: 'gardens#index', as:  '/'

  resources :gardens, only: [:index, :show, :new, :create] do
    resources :plants, only: [:create]
  end
  resources :plants, only: [:destroy]
end
