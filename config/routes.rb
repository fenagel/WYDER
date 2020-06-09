Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :programs do
    resources :bookmarks, only: [:create, :destroy]
  end
  resources :dashboards, only: :index
end
