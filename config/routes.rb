Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: "omniauth_callbacks"
  }
  root to: "notes#index"
  resources :notes
  resources :users, only: :show
  get 'contacts/new' # 入力画面
  post 'contacts/confirm' # 確認画面
  post 'contacts/back' # 確認画面から「入力画面に戻る」をクリックしたとき
  post 'contacts/done' # 完了画面
end
