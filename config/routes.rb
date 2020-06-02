Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :programs do
    resources :bookmarks, only: [:create, :destroy]
  end
  resources :dashboards, only: :index
end
