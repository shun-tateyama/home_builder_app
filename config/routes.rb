Rails.application.routes.draw do
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
end
