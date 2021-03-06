SignificantWeb::Application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :users
      resources :races
      resources :runs
    end
  end

  resources :races, only: [:index, :show]
  resources :users, only: [:index]

  root to: 'races#index'
end
