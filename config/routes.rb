Rails.application.routes.draw do
  devise_for :users
  root to: "notes#index"
  resources :notes
  resources :users, only: :show
  resources :note_steps, only: [:index, :show, :update]
end
