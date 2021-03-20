Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               sessions: 'users/sessions',
               registrations: "users/registrations",
               omniauth_callbacks: 'users/omniauth_callbacks',
             }
  root to: 'pages#index'
  resources :pages, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
