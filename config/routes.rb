Rails.application.routes.draw do
  get 'logs/index'
  get 'logs/create'
  get 'logs/show'
  get 'logs/edit'
  namespace :api do
    namespace :v1 do
      get 'users/create'
      get 'users/show'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show]
      resources :logs, only: [:index, :create, :show, :edit]
      resources :logged_foods, only: [:index, :create, :edit, :destroy]
      resources :foods, only: [:index, :create, :edit, :destroy]
    end
  end
  
end
