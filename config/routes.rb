  Rails.application.routes.draw do
    # usersモデル追加時に生成される
    devise_for :users
    resources :posts
    resources :comments, only: [ :create, :destroy ]
    get 'comments' => redirect('posts')
    root 'posts#index'
  end