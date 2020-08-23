Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'users#login'
      resources :logs, only: [:index, :create, :show, :edit]
      resources :logged_foods, only: [:index, :create, :edit, :destroy]
      resources :foods, only: [:index, :create, :edit, :destroy]
    end
  end

end
