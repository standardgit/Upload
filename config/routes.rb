Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users,
    path: '',
    path_names: {sign_in: "login", sign_out: "logout", edit: "profile", sign_up: "registration"},
    controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}
  #  For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
end
