Rails.application.routes.draw do
  get 'users/index'
  post 'users/index'
  get 'users/show'
  get 'traders/index'
  post 'traders/index'
  get 'traders/show'
  devise_for :users,
             controllers: {
               sessions: 'users/sessions',
               registrations: "users/registrations",
               omniauth_callbacks: 'users/omniauth_callbacks',
             }
  root to: 'pages#index'
  get 'pages/index'  => 'pages#index'
  get 'pages/trader' => 'pages#trader'
  get 'pages/user'   => 'pages#user'
  resources :pages, only: [:index, :show]
  resources :users, only: [:index, :show]
  resources :traders, only: [:index, :show]
end
