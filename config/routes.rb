Rails.application.routes.draw do
  devise_for :users
  resources :recepts do
    member do
      get :add_favorite
      get :remove_favorite
    end
  end
  resources :users

  root 'pages#show', id: 'home'
  # Routes to static pages - must be defined last
  get ':id', to: 'pages#show', as: :page, format: false
end
