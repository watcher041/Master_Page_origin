
Rails.application.routes.draw do

  devise_for :users

  # ホームページ
  root "users#index"

  # ユーザー関連パス
  resources :users, only: [:show]

  # 分野関連パス
  resources :fields, only: [:index]

end
