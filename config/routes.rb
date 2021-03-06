Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, except: :index do
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end
