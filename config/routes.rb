Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: "omniauth_callbacks"
  }
  root to: "notes#index"
  resources :notes
  resources :users, only: :show
end
