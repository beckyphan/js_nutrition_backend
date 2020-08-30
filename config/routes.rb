Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'users#login'
      resources :logs, only: [:index]
      resources :users do
        resources :logs, only: [:create, :show]
      end
      resources :log_foods, only: [:index, :create, :destroy]
      resources :foods, only: [:index]
    end
  end

end
